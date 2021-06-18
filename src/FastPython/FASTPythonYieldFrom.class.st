Class {
	#name : #FASTPythonYieldFrom,
	#superclass : #FASTStatement,
	#category : #'FASTPython-Entities'
}

{ #category : #meta }
FASTPythonYieldFrom class >> annotation [

	<FMClass: #YieldFrom super: #FASTStatement>
	<package: #FASTPython>
	<generated>
	^self
]

{ #category : #accessing }
FASTPythonYieldFrom >> expression [
	"Relation named: #expression type: #FASTExpression opposite: #yieldFrom"

	<generated>
	<FMProperty: #expression type: #FASTExpression opposite: #yieldFrom>
	^ self attributeAt: #expression ifAbsent: [ nil ]
]

{ #category : #accessing }
FASTPythonYieldFrom >> expression: anObject [

	<generated>
	(self attributeAt: #expression ifAbsentPut: [nil]) == anObject ifTrue: [ ^ anObject ].
	anObject ifNil: [ | otherSide |
		otherSide :=  self expression.
		self attributeAt: #expression put: anObject.
		otherSide yieldFrom: nil ]
	ifNotNil: [ 
		self attributeAt: #expression put: anObject.
		anObject yieldFrom: self ]
]

{ #category : #navigation }
FASTPythonYieldFrom >> expressionGroup [
	<generated>
	<navigation: 'Expression'>
	^ MooseSpecializedGroup with: self expression
]
