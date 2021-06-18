Class {
	#name : #FASTPythonIf,
	#superclass : #FASTStatement,
	#instVars : [
		'#elif => FMOne type: #FASTPythonIf opposite: #ifParent',
		'#ifParent => FMMany type: #FASTPythonIf opposite: #elif'
	],
	#category : #'PharoToPython-Entities'
}

{ #category : #meta }
FASTPythonIf class >> annotation [

	<FMClass: #If super: #FASTStatement>
	<package: #PharoToPython>
	<generated>
	^self
]

{ #category : #adding }
FASTPythonIf >> addBody: anObject [
	<generated>
	^ self body add: anObject
]

{ #category : #adding }
FASTPythonIf >> addElse: anObject [
	<generated>
	^ self else add: anObject
]

{ #category : #adding }
FASTPythonIf >> addIfParent: anObject [
	<generated>
	^ self ifParent add: anObject
]

{ #category : #accessing }
FASTPythonIf >> body [
	"Relation named: #body type: #FASTStatement opposite: #parentIfBody"

	<generated>
	<derived>
	<FMProperty: #body type: #FASTStatement opposite: #parentIfBody>
	^ self attributeAt: #body ifAbsentPut: [ FMMultivalueLink on: self opposite: #parentIfBody: ]
]

{ #category : #accessing }
FASTPythonIf >> body: anObject [

	<generated>
	self body value: anObject
]

{ #category : #navigation }
FASTPythonIf >> bodyGroup [
	<generated>
	<navigation: 'Body'>
	^ MooseSpecializedGroup withAll: self body asSet
]

{ #category : #accessing }
FASTPythonIf >> cond [
	"Relation named: #cond type: #FASTExpression opposite: #ifOwner"

	<generated>
	<FMProperty: #cond type: #FASTExpression opposite: #ifOwner>
	^ self attributeAt: #cond ifAbsent: [ nil ]
]

{ #category : #accessing }
FASTPythonIf >> cond: anObject [

	<generated>
	(self attributeAt: #cond ifAbsentPut: [nil]) == anObject ifTrue: [ ^ anObject ].
	anObject ifNil: [ | otherSide |
		otherSide :=  self cond.
		self attributeAt: #cond put: anObject.
		otherSide ifOwner: nil ]
	ifNotNil: [ 
		self attributeAt: #cond put: anObject.
		anObject ifOwner: self ]
]

{ #category : #navigation }
FASTPythonIf >> condGroup [
	<generated>
	<navigation: 'Cond'>
	^ MooseSpecializedGroup with: self cond
]

{ #category : #accessing }
FASTPythonIf >> elif [
	"Relation named: #elif type: #FASTPythonIf opposite: #ifParent"

	<generated>
	^ elif
]

{ #category : #accessing }
FASTPythonIf >> elif: anObject [

	<generated>
	elif := anObject
]

{ #category : #accessing }
FASTPythonIf >> else [
	"Relation named: #else type: #FASTStatement opposite: #parentElse"

	<generated>
	<derived>
	<FMProperty: #else type: #FASTStatement opposite: #parentElse>
	^ self attributeAt: #else ifAbsentPut: [ FMMultivalueLink on: self opposite: #parentElse: ]
]

{ #category : #accessing }
FASTPythonIf >> else: anObject [

	<generated>
	self else value: anObject
]

{ #category : #navigation }
FASTPythonIf >> elseGroup [
	<generated>
	<navigation: 'Else'>
	^ MooseSpecializedGroup withAll: self else asSet
]

{ #category : #accessing }
FASTPythonIf >> ifParent [
	"Relation named: #ifParent type: #FASTPythonIf opposite: #elif"

	<generated>
	<derived>
	^ ifParent
]

{ #category : #accessing }
FASTPythonIf >> ifParent: anObject [

	<generated>
	ifParent value: anObject
]
