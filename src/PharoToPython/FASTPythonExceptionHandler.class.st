Class {
	#name : #FASTPythonExceptionHandler,
	#superclass : #FASTPythonEntity,
	#instVars : [
		'#exceptionAssociations => FMMany type: #FASTPythonExceptionAssociation opposite: #exceptionHandler',
		'#try => FMOne type: #FASTPythonTry opposite: #exceptHandlers'
	],
	#category : #'PharoToPython-Entities'
}

{ #category : #meta }
FASTPythonExceptionHandler class >> annotation [

	<FMClass: #ExceptionHandler super: #FASTPythonEntity>
	<package: #PharoToPython>
	<generated>
	^self
]

{ #category : #adding }
FASTPythonExceptionHandler >> addExceptionAction: anObject [
	<generated>
	^ self exceptionActions add: anObject
]

{ #category : #adding }
FASTPythonExceptionHandler >> addExceptionAssociation: anObject [
	<generated>
	^ self exceptionAssociations add: anObject
]

{ #category : #accessing }
FASTPythonExceptionHandler >> exceptionActions [
	"Relation named: #exceptionActions type: #FASTStatement opposite: #exceptionHandler"

	<generated>
	<derived>
	<FMProperty: #exceptionActions type: #FASTStatement opposite: #exceptionHandler>
	^ self attributeAt: #exceptionActions ifAbsentPut: [ FMMultivalueLink on: self opposite: #exceptionHandler: ]
]

{ #category : #accessing }
FASTPythonExceptionHandler >> exceptionActions: anObject [

	<generated>
	self exceptionActions value: anObject
]

{ #category : #navigation }
FASTPythonExceptionHandler >> exceptionActionsGroup [
	<generated>
	<navigation: 'ExceptionActions'>
	^ MooseSpecializedGroup withAll: self exceptionActions asSet
]

{ #category : #accessing }
FASTPythonExceptionHandler >> exceptionAssociations [
	"Relation named: #exceptionAssociations type: #FASTPythonExceptionAssociation opposite: #exceptionHandler"

	<generated>
	<derived>
	^ exceptionAssociations
]

{ #category : #accessing }
FASTPythonExceptionHandler >> exceptionAssociations: anObject [

	<generated>
	exceptionAssociations value: anObject
]

{ #category : #accessing }
FASTPythonExceptionHandler >> try [
	"Relation named: #try type: #FASTPythonTry opposite: #exceptHandlers"

	<generated>
	<container>
	^ try
]

{ #category : #accessing }
FASTPythonExceptionHandler >> try: anObject [

	<generated>
	try := anObject
]

{ #category : #navigation }
FASTPythonExceptionHandler >> tryGroup [
	<generated>
	<navigation: 'Try'>
	^ MooseSpecializedGroup with: self try
]
