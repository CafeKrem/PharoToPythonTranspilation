Class {
	#name : #FASTPythonException,
	#superclass : #FASTPythonEntity,
	#instVars : [
		'#name => FMProperty',
		'#description => FMProperty',
		'#exceptionAssociation => FMOne type: #FASTPythonExceptionAssociation opposite: #exception',
		'#raise => FMOne type: #FASTPythonRaise opposite: #exception'
	],
	#category : #'FASTPython-Entities'
}

{ #category : #meta }
FASTPythonException class >> annotation [

	<FMClass: #Exception super: #FASTPythonEntity>
	<package: #FASTPython>
	<generated>
	^self
]

{ #category : #accessing }
FASTPythonException >> description [

	<FMProperty: #description type: #String>
	<generated>
	^ description
]

{ #category : #accessing }
FASTPythonException >> description: anObject [
	<generated>
	description := anObject
]

{ #category : #accessing }
FASTPythonException >> exceptionAssociation [
	"Relation named: #exceptionAssociation type: #FASTPythonExceptionAssociation opposite: #exception"

	<generated>
	<derived>
	^ exceptionAssociation
]

{ #category : #accessing }
FASTPythonException >> exceptionAssociation: anObject [

	<generated>
	exceptionAssociation := anObject
]

{ #category : #accessing }
FASTPythonException >> name [

	<FMProperty: #name type: #String>
	<generated>
	^ name
]

{ #category : #accessing }
FASTPythonException >> name: anObject [
	<generated>
	name := anObject
]

{ #category : #accessing }
FASTPythonException >> raise [
	"Relation named: #raise type: #FASTPythonRaise opposite: #exception"

	<generated>
	<derived>
	^ raise
]

{ #category : #accessing }
FASTPythonException >> raise: anObject [

	<generated>
	raise := anObject
]
