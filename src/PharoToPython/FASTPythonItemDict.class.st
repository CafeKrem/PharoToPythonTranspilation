Class {
	#name : #FASTPythonItemDict,
	#superclass : #FASTPythonEntity,
	#instVars : [
		'#dict => FMOne type: #FASTPythonDict opposite: #itemsDict'
	],
	#category : #'PharoToPython-Entities'
}

{ #category : #meta }
FASTPythonItemDict class >> annotation [

	<FMClass: #ItemDict super: #FASTPythonEntity>
	<package: #PharoToPython>
	<generated>
	^self
]

{ #category : #accessing }
FASTPythonItemDict >> dict [
	"Relation named: #dict type: #FASTPythonDict opposite: #itemsDict"

	<generated>
	<container>
	^ dict
]

{ #category : #accessing }
FASTPythonItemDict >> dict: anObject [

	<generated>
	dict := anObject
]

{ #category : #navigation }
FASTPythonItemDict >> dictGroup [
	<generated>
	<navigation: 'Dict'>
	^ MooseSpecializedGroup with: self dict
]

{ #category : #accessing }
FASTPythonItemDict >> key [
	"Relation named: #key type: #FASTExpression opposite: #itemDict"

	<generated>
	<FMProperty: #key type: #FASTExpression opposite: #itemDict>
	^ self attributeAt: #key ifAbsent: [ nil ]
]

{ #category : #accessing }
FASTPythonItemDict >> key: anObject [

	<generated>
	(self attributeAt: #key ifAbsentPut: [nil]) == anObject ifTrue: [ ^ anObject ].
	anObject ifNil: [ | otherSide |
		otherSide :=  self key.
		self attributeAt: #key put: anObject.
		otherSide itemDict: nil ]
	ifNotNil: [ 
		self attributeAt: #key put: anObject.
		anObject itemDict: self ]
]

{ #category : #navigation }
FASTPythonItemDict >> keyGroup [
	<generated>
	<navigation: 'Key'>
	^ MooseSpecializedGroup with: self key
]

{ #category : #accessing }
FASTPythonItemDict >> value [
	"Relation named: #value type: #FASTExpression opposite: #itemDict"

	<generated>
	<FMProperty: #value type: #FASTExpression opposite: #itemDict>
	^ self attributeAt: #value ifAbsent: [ nil ]
]

{ #category : #accessing }
FASTPythonItemDict >> value: anObject [

	<generated>
	(self attributeAt: #value ifAbsentPut: [nil]) == anObject ifTrue: [ ^ anObject ].
	anObject ifNil: [ | otherSide |
		otherSide :=  self value.
		self attributeAt: #value put: anObject.
		otherSide itemDict: nil ]
	ifNotNil: [ 
		self attributeAt: #value put: anObject.
		anObject itemDict: self ]
]

{ #category : #navigation }
FASTPythonItemDict >> valueGroup [
	<generated>
	<navigation: 'Value'>
	^ MooseSpecializedGroup with: self value
]
