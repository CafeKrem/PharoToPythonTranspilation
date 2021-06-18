Class {
	#name : #FASTPythonLambda,
	#superclass : #FASTExpression,
	#category : #'FASTPython-Entities'
}

{ #category : #meta }
FASTPythonLambda class >> annotation [

	<FMClass: #Lambda super: #FASTExpression>
	<package: #FASTPython>
	<generated>
	^self
]

{ #category : #accessing }
FASTPythonLambda >> body [
	"Relation named: #body type: #FASTExpression opposite: #lambda"

	<generated>
	<FMProperty: #body type: #FASTExpression opposite: #lambda>
	^ self attributeAt: #body ifAbsent: [ nil ]
]

{ #category : #accessing }
FASTPythonLambda >> body: anObject [

	<generated>
	(self attributeAt: #body ifAbsentPut: [nil]) == anObject ifTrue: [ ^ anObject ].
	anObject ifNil: [ | otherSide |
		otherSide :=  self body.
		self attributeAt: #body put: anObject.
		otherSide lambda: nil ]
	ifNotNil: [ 
		self attributeAt: #body put: anObject.
		anObject lambda: self ]
]

{ #category : #navigation }
FASTPythonLambda >> bodyGroup [
	<generated>
	<navigation: 'Body'>
	^ MooseSpecializedGroup with: self body
]
