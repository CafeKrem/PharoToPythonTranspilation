Class {
	#name : #FASTPythonTry,
	#superclass : #FASTStatement,
	#instVars : [
		'#exceptHandlers => FMMany type: #FASTPythonExceptionHandler opposite: #try'
	],
	#category : #'FASTPython-Entities'
}

{ #category : #meta }
FASTPythonTry class >> annotation [

	<FMClass: #Try super: #FASTStatement>
	<package: #FASTPython>
	<generated>
	^self
]

{ #category : #adding }
FASTPythonTry >> addBody: anObject [
	<generated>
	^ self body add: anObject
]

{ #category : #adding }
FASTPythonTry >> addExceptHandler: anObject [
	<generated>
	^ self exceptHandlers add: anObject
]

{ #category : #adding }
FASTPythonTry >> addFinaly: anObject [
	<generated>
	^ self finaly add: anObject
]

{ #category : #accessing }
FASTPythonTry >> body [
	"Relation named: #body type: #FASTStatement opposite: #try"

	<generated>
	<derived>
	<FMProperty: #body type: #FASTStatement opposite: #try>
	^ self attributeAt: #body ifAbsentPut: [ FMMultivalueLink on: self opposite: #try: ]
]

{ #category : #accessing }
FASTPythonTry >> body: anObject [

	<generated>
	self body value: anObject
]

{ #category : #navigation }
FASTPythonTry >> bodyGroup [
	<generated>
	<navigation: 'Body'>
	^ MooseSpecializedGroup withAll: self body asSet
]

{ #category : #accessing }
FASTPythonTry >> exceptHandlers [
	"Relation named: #exceptHandlers type: #FASTPythonExceptionHandler opposite: #try"

	<generated>
	<derived>
	^ exceptHandlers
]

{ #category : #accessing }
FASTPythonTry >> exceptHandlers: anObject [

	<generated>
	exceptHandlers value: anObject
]

{ #category : #navigation }
FASTPythonTry >> exceptHandlersGroup [
	<generated>
	<navigation: 'ExceptHandlers'>
	^ MooseSpecializedGroup withAll: self exceptHandlers asSet
]

{ #category : #accessing }
FASTPythonTry >> finaly [
	"Relation named: #finaly type: #FASTStatement opposite: #try"

	<generated>
	<derived>
	<FMProperty: #finaly type: #FASTStatement opposite: #try>
	^ self attributeAt: #finaly ifAbsentPut: [ FMMultivalueLink on: self opposite: #try: ]
]

{ #category : #accessing }
FASTPythonTry >> finaly: anObject [

	<generated>
	self finaly value: anObject
]

{ #category : #navigation }
FASTPythonTry >> finalyGroup [
	<generated>
	<navigation: 'Finaly'>
	^ MooseSpecializedGroup withAll: self finaly asSet
]
