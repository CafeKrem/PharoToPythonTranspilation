Class {
	#name : #FASTPythonFor,
	#superclass : #FASTStatement,
	#traits : 'FASTPythonAsynchronable',
	#classTraits : 'FASTPythonAsynchronable classTrait',
	#instVars : [
		'#iterationVar => FMOne type: #FASTPythonAssignedTarget opposite: #for'
	],
	#category : #'FASTPython-Entities'
}

{ #category : #meta }
FASTPythonFor class >> annotation [

	<FMClass: #For super: #FASTStatement>
	<package: #FASTPython>
	<generated>
	^self
]

{ #category : #adding }
FASTPythonFor >> addBody: anObject [
	<generated>
	^ self body add: anObject
]

{ #category : #adding }
FASTPythonFor >> addOrelse: anObject [
	<generated>
	^ self orelse add: anObject
]

{ #category : #accessing }
FASTPythonFor >> body [
	"Relation named: #body type: #FASTStatement opposite: #parentForBody"

	<generated>
	<derived>
	<FMProperty: #body type: #FASTStatement opposite: #parentForBody>
	^ self attributeAt: #body ifAbsentPut: [ FMMultivalueLink on: self opposite: #parentForBody: ]
]

{ #category : #accessing }
FASTPythonFor >> body: anObject [

	<generated>
	self body value: anObject
]

{ #category : #navigation }
FASTPythonFor >> bodyGroup [
	<generated>
	<navigation: 'Body'>
	^ MooseSpecializedGroup withAll: self body asSet
]

{ #category : #accessing }
FASTPythonFor >> iterable [
	"Relation named: #iterable type: #FASTExpression opposite: #parentForIterable"

	<generated>
	<derived>
	<FMProperty: #iterable type: #FASTExpression opposite: #parentForIterable>
	^ self attributeAt: #iterable ifAbsent: [ nil ]
]

{ #category : #accessing }
FASTPythonFor >> iterable: anObject [

	<generated>
	(self attributeAt: #iterable ifAbsentPut: [nil]) == anObject ifTrue: [ ^ anObject ].
	anObject ifNil: [ | otherSide |
		otherSide :=  self iterable.
		self attributeAt: #iterable put: anObject.
		otherSide parentForIterable: nil ]
	ifNotNil: [ 
		self attributeAt: #iterable put: anObject.
		anObject parentForIterable: self ]
]

{ #category : #navigation }
FASTPythonFor >> iterableGroup [
	<generated>
	<navigation: 'Iterable'>
	^ MooseSpecializedGroup with: self iterable
]

{ #category : #accessing }
FASTPythonFor >> iterationVar [
	"Relation named: #iterationVar type: #FASTPythonAssignedTarget opposite: #for"

	<generated>
	^ iterationVar
]

{ #category : #accessing }
FASTPythonFor >> iterationVar: anObject [

	<generated>
	iterationVar := anObject
]

{ #category : #navigation }
FASTPythonFor >> iterationVarGroup [
	<generated>
	<navigation: 'IterationVar'>
	^ MooseSpecializedGroup with: self iterationVar
]

{ #category : #accessing }
FASTPythonFor >> orelse [
	"Relation named: #orelse type: #FASTStatement opposite: #parentOrelse"

	<generated>
	<derived>
	<FMProperty: #orelse type: #FASTStatement opposite: #parentOrelse>
	^ self attributeAt: #orelse ifAbsentPut: [ FMMultivalueLink on: self opposite: #parentOrelse: ]
]

{ #category : #accessing }
FASTPythonFor >> orelse: anObject [

	<generated>
	self orelse value: anObject
]

{ #category : #navigation }
FASTPythonFor >> orelseGroup [
	<generated>
	<navigation: 'Orelse'>
	^ MooseSpecializedGroup withAll: self orelse asSet
]
