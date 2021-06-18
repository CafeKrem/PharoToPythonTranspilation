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
	1 halt
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
PharoToPythonExperiment >> parameterRule: aCollection [ 
	^ aCollection collect: [:each | self parameterRulebBis:  each  ]
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
	1 halt
]
