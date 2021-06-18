Class {
	#name : #FASTPythonAssignExpression,
	#superclass : #FASTPythonEntity,
	#instVars : [
		'#left => FMOne type: #FASTPythonAssignedTarget opposite: #assignExpression'
	],
	#category : #'PharoToPython-Entities'
}

{ #category : #meta }
FASTPythonAssignExpression class >> annotation [

	<FMClass: #AssignExpression super: #FASTPythonEntity>
	<package: #PharoToPython>
	<generated>
	^self
]

{ #category : #accessing }
FASTPythonAssignExpression >> left [
	"Relation named: #left type: #FASTPythonAssignedTarget opposite: #assignExpression"

	<generated>
	^ left
]

{ #category : #accessing }
FASTPythonAssignExpression >> left: anObject [

	<generated>
	left := anObject
]

{ #category : #navigation }
FASTPythonAssignExpression >> leftGroup [
	<generated>
	<navigation: 'Left'>
	^ MooseSpecializedGroup with: self left
]

{ #category : #accessing }
FASTPythonAssignExpression >> right [
	"Relation named: #right type: #FASTExpression opposite: #assignExpression"

	<generated>
	<FMProperty: #right type: #FASTExpression opposite: #assignExpression>
	^ self attributeAt: #right ifAbsent: [ nil ]
]

{ #category : #accessing }
FASTPythonAssignExpression >> right: anObject [

	<generated>
	(self attributeAt: #right ifAbsentPut: [nil]) == anObject ifTrue: [ ^ anObject ].
	anObject ifNil: [ | otherSide |
		otherSide :=  self right.
		self attributeAt: #right put: anObject.
		otherSide assignExpression: nil ]
	ifNotNil: [ 
		self attributeAt: #right put: anObject.
		anObject assignExpression: self ]
]

{ #category : #navigation }
FASTPythonAssignExpression >> rightGroup [
	<generated>
	<navigation: 'Right'>
	^ MooseSpecializedGroup with: self right
]
