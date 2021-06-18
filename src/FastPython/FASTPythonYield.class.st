Class {
	#name : #FASTPythonYield,
	#superclass : #FASTStatement,
	#category : #'FASTPython-Entities'
}

{ #category : #meta }
FASTPythonYield class >> annotation [

	<FMClass: #Yield super: #FASTStatement>
	<package: #FASTPython>
	<generated>
	^self
]

{ #category : #accessing }
FASTPythonYield >> expression [
	"Relation named: #expression type: #FASTExpression opposite: #yield"

	<generated>
	<FMProperty: #expression type: #FASTExpression opposite: #yield>
	^ self attributeAt: #expression ifAbsent: [ nil ]
]

{ #category : #accessing }
FASTPythonYield >> expression: anObject [

	<generated>
	(self attributeAt: #expression ifAbsentPut: [nil]) == anObject ifTrue: [ ^ anObject ].
	anObject ifNil: [ | otherSide |
		otherSide :=  self expression.
		self attributeAt: #expression put: anObject.
		otherSide yield: nil ]
	ifNotNil: [ 
		self attributeAt: #expression put: anObject.
		anObject yield: self ]
]

{ #category : #navigation }
FASTPythonYield >> expressionGroup [
	<generated>
	<navigation: 'Expression'>
	^ MooseSpecializedGroup with: self expression
]
