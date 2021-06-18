Class {
	#name : #FASTPythonAwait,
	#superclass : #FASTStatement,
	#category : #'PharoToPython-Entities'
}

{ #category : #meta }
FASTPythonAwait class >> annotation [

	<FMClass: #Await super: #FASTStatement>
	<package: #PharoToPython>
	<generated>
	^self
]

{ #category : #accessing }
FASTPythonAwait >> expression [
	"Relation named: #expression type: #FASTExpression opposite: #await"

	<generated>
	<FMProperty: #expression type: #FASTExpression opposite: #await>
	^ self attributeAt: #expression ifAbsent: [ nil ]
]

{ #category : #accessing }
FASTPythonAwait >> expression: anObject [

	<generated>
	(self attributeAt: #expression ifAbsentPut: [nil]) == anObject ifTrue: [ ^ anObject ].
	anObject ifNil: [ | otherSide |
		otherSide :=  self expression.
		self attributeAt: #expression put: anObject.
		otherSide await: nil ]
	ifNotNil: [ 
		self attributeAt: #expression put: anObject.
		anObject await: self ]
]

{ #category : #navigation }
FASTPythonAwait >> expressionGroup [
	<generated>
	<navigation: 'Expression'>
	^ MooseSpecializedGroup with: self expression
]
