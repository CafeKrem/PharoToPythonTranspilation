Class {
	#name : #FASTPythonCall,
	#superclass : #FASTExpression,
	#instVars : [
		'#callee => FMProperty'
	],
	#category : #'PharoToPython-Entities'
}

{ #category : #meta }
FASTPythonCall class >> annotation [

	<FMClass: #Call super: #FASTExpression>
	<package: #PharoToPython>
	<generated>
	^self
]

{ #category : #adding }
FASTPythonCall >> addArgument: anObject [
	<generated>
	^ self arguments add: anObject
]

{ #category : #accessing }
FASTPythonCall >> arguments [
	"Relation named: #arguments type: #FASTExpression opposite: #call"

	<generated>
	<derived>
	<FMProperty: #arguments type: #FASTExpression opposite: #call>
	^ self attributeAt: #arguments ifAbsentPut: [ FMMultivalueLink on: self opposite: #call: ]
]

{ #category : #accessing }
FASTPythonCall >> arguments: anObject [

	<generated>
	self arguments value: anObject
]

{ #category : #navigation }
FASTPythonCall >> argumentsGroup [
	<generated>
	<navigation: 'Arguments'>
	^ MooseSpecializedGroup withAll: self arguments asSet
]

{ #category : #accessing }
FASTPythonCall >> callee [

	<FMProperty: #callee type: #String>
	<generated>
	^ callee
]

{ #category : #accessing }
FASTPythonCall >> callee: anObject [
	<generated>
	callee := anObject
]

{ #category : #accessing }
FASTPythonCall >> left [
	"Relation named: #left type: #FASTExpression opposite: #call"

	<generated>
	<FMProperty: #left type: #FASTExpression opposite: #call>
	^ self attributeAt: #left ifAbsent: [ nil ]
]

{ #category : #accessing }
FASTPythonCall >> left: anObject [

	<generated>
	(self attributeAt: #left ifAbsentPut: [nil]) == anObject ifTrue: [ ^ anObject ].
	anObject ifNil: [ | otherSide |
		otherSide :=  self left.
		self attributeAt: #left put: anObject.
		otherSide call: nil ]
	ifNotNil: [ 
		self attributeAt: #left put: anObject.
		anObject call: self ]
]

{ #category : #navigation }
FASTPythonCall >> leftGroup [
	<generated>
	<navigation: 'Left'>
	^ MooseSpecializedGroup with: self left
]
