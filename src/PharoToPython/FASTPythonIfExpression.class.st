Class {
	#name : #FASTPythonIfExpression,
	#superclass : #FASTExpression,
	#category : #'PharoToPython-Entities'
}

{ #category : #meta }
FASTPythonIfExpression class >> annotation [

	<FMClass: #IfExpression super: #FASTExpression>
	<package: #PharoToPython>
	<generated>
	^self
]

{ #category : #accessing }
FASTPythonIfExpression >> body [
	"Relation named: #body type: #FASTExpression opposite: #ifExpression"

	<generated>
	<FMProperty: #body type: #FASTExpression opposite: #ifExpression>
	^ self attributeAt: #body ifAbsent: [ nil ]
]

{ #category : #accessing }
FASTPythonIfExpression >> body: anObject [

	<generated>
	(self attributeAt: #body ifAbsentPut: [nil]) == anObject ifTrue: [ ^ anObject ].
	anObject ifNil: [ | otherSide |
		otherSide :=  self body.
		self attributeAt: #body put: anObject.
		otherSide ifExpression: nil ]
	ifNotNil: [ 
		self attributeAt: #body put: anObject.
		anObject ifExpression: self ]
]

{ #category : #navigation }
FASTPythonIfExpression >> bodyGroup [
	<generated>
	<navigation: 'Body'>
	^ MooseSpecializedGroup with: self body
]

{ #category : #accessing }
FASTPythonIfExpression >> cond [
	"Relation named: #cond type: #FASTExpression opposite: #ifExpression"

	<generated>
	<FMProperty: #cond type: #FASTExpression opposite: #ifExpression>
	^ self attributeAt: #cond ifAbsent: [ nil ]
]

{ #category : #accessing }
FASTPythonIfExpression >> cond: anObject [

	<generated>
	(self attributeAt: #cond ifAbsentPut: [nil]) == anObject ifTrue: [ ^ anObject ].
	anObject ifNil: [ | otherSide |
		otherSide :=  self cond.
		self attributeAt: #cond put: anObject.
		otherSide ifExpression: nil ]
	ifNotNil: [ 
		self attributeAt: #cond put: anObject.
		anObject ifExpression: self ]
]

{ #category : #navigation }
FASTPythonIfExpression >> condGroup [
	<generated>
	<navigation: 'Cond'>
	^ MooseSpecializedGroup with: self cond
]

{ #category : #accessing }
FASTPythonIfExpression >> else [
	"Relation named: #else type: #FASTExpression opposite: #ifExpression"

	<generated>
	<FMProperty: #else type: #FASTExpression opposite: #ifExpression>
	^ self attributeAt: #else ifAbsent: [ nil ]
]

{ #category : #accessing }
FASTPythonIfExpression >> else: anObject [

	<generated>
	(self attributeAt: #else ifAbsentPut: [nil]) == anObject ifTrue: [ ^ anObject ].
	anObject ifNil: [ | otherSide |
		otherSide :=  self else.
		self attributeAt: #else put: anObject.
		otherSide ifExpression: nil ]
	ifNotNil: [ 
		self attributeAt: #else put: anObject.
		anObject ifExpression: self ]
]

{ #category : #navigation }
FASTPythonIfExpression >> elseGroup [
	<generated>
	<navigation: 'Else'>
	^ MooseSpecializedGroup with: self else
]
