Class {
	#name : #FASTPythonAssign,
	#superclass : #FASTStatement,
	#instVars : [
		'#left => FMOne type: #FASTPythonAssignedTarget opposite: #parentAssign'
	],
	#category : #'FASTPython-Entities'
}

{ #category : #meta }
FASTPythonAssign class >> annotation [

	<FMClass: #Assign super: #FASTStatement>
	<package: #FASTPython>
	<generated>
	^self
]

{ #category : #accessing }
FASTPythonAssign >> left [
	"Relation named: #left type: #FASTPythonAssignedTarget opposite: #parentAssign"

	<generated>
	<derived>
	^ left
]

{ #category : #accessing }
FASTPythonAssign >> left: anObject [

	<generated>
	left := anObject
]

{ #category : #navigation }
FASTPythonAssign >> leftGroup [
	<generated>
	<navigation: 'Left'>
	^ MooseSpecializedGroup with: self left
]

{ #category : #accessing }
FASTPythonAssign >> right [
	"Relation named: #right type: #FASTExpression opposite: #assign"

	<generated>
	<FMProperty: #right type: #FASTExpression opposite: #assign>
	^ self attributeAt: #right ifAbsent: [ nil ]
]

{ #category : #accessing }
FASTPythonAssign >> right: anObject [

	<generated>
	(self attributeAt: #right ifAbsentPut: [nil]) == anObject ifTrue: [ ^ anObject ].
	anObject ifNil: [ | otherSide |
		otherSide :=  self right.
		self attributeAt: #right put: anObject.
		otherSide assign: nil ]
	ifNotNil: [ 
		self attributeAt: #right put: anObject.
		anObject assign: self ]
]

{ #category : #navigation }
FASTPythonAssign >> rightGroup [
	<generated>
	<navigation: 'Right'>
	^ MooseSpecializedGroup with: self right
]
