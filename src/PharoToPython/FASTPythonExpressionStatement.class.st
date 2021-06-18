Class {
	#name : #FASTPythonExpressionStatement,
	#superclass : #FASTExpressionStatement,
	#category : #'PharoToPython-Entities'
}

{ #category : #meta }
FASTPythonExpressionStatement class >> annotation [

	<FMClass: #ExpressionStatement super: #FASTExpressionStatement>
	<package: #PharoToPython>
	<generated>
	^self
]

{ #category : #accessing }
FASTPythonExpressionStatement >> expr [
	"Relation named: #expr type: #FASTExpression opposite: #expressionStatement"

	<generated>
	<FMProperty: #expr type: #FASTExpression opposite: #expressionStatement>
	^ self attributeAt: #expr ifAbsent: [ nil ]
]

{ #category : #accessing }
FASTPythonExpressionStatement >> expr: anObject [

	<generated>
	(self attributeAt: #expr ifAbsentPut: [nil]) == anObject ifTrue: [ ^ anObject ].
	anObject ifNil: [ | otherSide |
		otherSide :=  self expr.
		self attributeAt: #expr put: anObject.
		otherSide expressionStatement: nil ]
	ifNotNil: [ 
		self attributeAt: #expr put: anObject.
		anObject expressionStatement: self ]
]

{ #category : #navigation }
FASTPythonExpressionStatement >> exprGroup [
	<generated>
	<navigation: 'Expr'>
	^ MooseSpecializedGroup with: self expr
]
