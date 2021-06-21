Class {
	#name : #PharoToPythonExperiment,
	#superclass : #Object,
	#instVars : [
		'model'
	],
	#category : #PharoToPython
}

{ #category : #running }
PharoToPythonExperiment class >> transformToPython: aFASTPharoMethodEntity [ 
	^ self new main: aFASTPharoMethodEntity
]

{ #category : #API }
PharoToPythonExperiment class >> transformToPythonClass: aClass [
	^ self new objectRule: aClass
]

{ #category : #transflation }
PharoToPythonExperiment >> expressionRule: anExpression [
	| result resultNumber resultString |
	result := (FASTLiteral suchAs: {(#value -> #'@value')})
		match: anExpression.
	result isMatch
		ifTrue: [ resultNumber := (FASTPharoNumberLiteral
				suchAs: {(#value -> #'@value')}) match: anExpression.
			resultNumber isMatch
				ifTrue: [ ^ FASTPythonInteger new
						value: (resultNumber at: #value);
						startPos: 0;
						endPos: 1;
						yourself ].
			resultString := (FASTStringLiteral suchAs: {(#value -> #'@value')})
				match: anExpression.
			resultString
				ifTrue: [ ^ FASTPythonString new
						value: (resultString at: #value);
						startPos: 0;
						endPos: 1;
						yourself ].
			1 halt ].
	result := (FASTPharoMessageSend
		suchAs:
			{(#kind -> #'@arity').
			(#selector -> #'@selector').
			(#arguments -> #'*arguments').
			(#receiver -> #'@receiver')}) match: anExpression.
	result isMatch
		ifTrue: [ (#binary asMatcher match: (result at: #arity)) isMatch
				ifTrue: [ ^ FASTPythonBinOp new
						left: (self expressionRule: (result at: #receiver));
						right:
							(self
								expressionRule:
									((result at: #arguments) size = 1
										ifTrue: [ (result at: #arguments) first ]
										ifFalse: [ 1 halt ]));
						op: (self selectorRule: (result at: #selector));
						startPos: 0;
						endPos: 1;
						yourself ].
			1 halt ].
	result := (FASTPharoAssignmentExpression
		suchAs:
			{(#variable -> #'@var').
			(#expression -> FASTPharoMessageSend
				suchAs:
					{(#selector -> #'@selector').
					(#receiver -> #'@var').
					(#arguments -> #'@arguments')})}) match: anExpression.
	result isMatch
		ifTrue: [ ^ FASTPythonoperationAssignement new
				left: (self expressionRule: (result at: #var));
				right: (self expressionRule: (result at: #arguments));
				operation: (self selectorRule: (result at: #selector));
				startPos: 0;
				endPos: 1;
				yourself ].
	result := (FASTPharoAssignmentExpression
		suchAs:
			{(#variable -> #'@left').
			(#expression -> #'@right')}) match: anExpression.
	result isMatch
		ifTrue: [ ^ FASTPythonAssignExpression new
				left: (self expressionRule: (result at: #left));
				right: (self expressionRule: (result at: #right));
				startPos: 0;
				endPos: 1;
				yourself ].
	result := (FASTVariableExpression suchAs: {(#name -> #'@varName')})
		match: anExpression.
	result isMatch
		ifTrue: [ ^ FASTPythonVarRef new
				name: (result at: #varName);
				startPos: 0;
				endPos: 1;
				yourself ].
	1 halt
]

{ #category : #util }
PharoToPythonExperiment >> importFASTPharo: aString withClass: aClass [
	^ FASTSmalltalkImporterVisitor new
		runWithSource: (aClass >> aString) sourceCode
]

{ #category : #action }
PharoToPythonExperiment >> main: aFASTPharoMethodEntity [
	| methodRuleResult statementRuleResult parameterRuleReult methodPython |
	model := FASTPythonModel new.
	methodRuleResult := (FASTPharoMethodEntity
		suchAs:
			{(#statements -> #'*body').
			(#parameters -> #'*params').
			(#name -> #'@name')}) match: aFASTPharoMethodEntity.
	statementRuleResult := self
		statementRule: (methodRuleResult at: #body).
	parameterRuleReult := self
		parameterRule: (methodRuleResult at: #params).
	methodPython := FASTPythonFunctionDeclaration new
		body: statementRuleResult;
		parameters: parameterRuleReult;
		name: (methodRuleResult at: #name);
		yourself.
	model add: methodPython.
	methodPython
		startPos: 0;
		endPos: 1.
	^ methodPython
]

{ #category : #rule }
PharoToPythonExperiment >> objectRule: aClass [
	| methods pyModel |
	methods := aClass allMethods
		select: [ :each | each classBinding value = aClass ].
	pyModel := FASTPythonClassDeclaration new
		addSuperClass: (self superClassRule: aClass superclass);
		packageName: aClass package name;
		startPos: 0;
		endPos: 1;
		yourself.
	pyModel
		body:
			(methods
				collect: [ :eachMethod | 
					self
						main: (self importFASTPharo: eachMethod selector withClass: aClass) ]).
	^ pyModel
]

{ #category : #rule }
PharoToPythonExperiment >> parameterRule: aCollection [ 
	^ aCollection collect: [:each | self parameterRulebBis:  each  ]
]

{ #category : #rule }
PharoToPythonExperiment >> selectorRule: aFASTPharoSelector [
	| result |
	result := (FASTPharoSelector suchAs: {(#name -> #'@selector')})
		match: aFASTPharoSelector.
	result isMatch
		ifTrue: [ ^ result at: #selector ].
	1 halt
]

{ #category : #rule }
PharoToPythonExperiment >> statementRule: aCollection [ 
	^ aCollection collect: [:each | self statementRuleBis: each  ]
]

{ #category : #translation }
PharoToPythonExperiment >> statementRuleBis: aStatement [
	| result |
	result := (FASTReturnStatement suchAs: {(#expression -> #'@expr')})
		match: aStatement.
	result isMatch
		ifTrue: [ ^ FASTPythonReturn new
				expression: (self expressionRule: (result at: #expr));
				startPos: 0;
				endPos: 1;
				yourself ].
	result := (FASTExpressionStatement
		suchAs: {(#expression -> #'@expression')}) match: aStatement.
	result isMatch
		ifTrue: [ ^ FASTPythonExpressionStatement new
				expression: (self expressionRule: (result at: #expression));
				startPos: 0;
				endPos: 1 yourself ].
	1 halt
]

{ #category : #rule }
PharoToPythonExperiment >> superClassRule: aClass [
	| result |
	result := ({Object} isContained named: #class) match: aClass.
	result isMatch
		ifTrue: [ ^ FASTPythonVarRef new
				name: #Object;
				yourself ].
	^ FASTPythonVarRef new
		name: aClass name asSymbol;
		yourself
]
