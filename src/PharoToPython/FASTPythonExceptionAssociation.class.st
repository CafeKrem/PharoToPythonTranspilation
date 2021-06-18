Class {
	#name : #FASTPythonExceptionAssociation,
	#superclass : #FASTPythonEntity,
	#instVars : [
		'#exceptionHandler => FMOne type: #FASTPythonExceptionHandler opposite: #exceptionAssociations',
		'#exception => FMOne type: #FASTPythonException opposite: #exceptionAssociation',
		'#allias => FMOne type: #FASTPythonVarRef opposite: #exceptionAssociation'
	],
	#category : #'PharoToPython-Entities'
}

{ #category : #meta }
FASTPythonExceptionAssociation class >> annotation [

	<FMClass: #ExceptionAssociation super: #FASTPythonEntity>
	<package: #PharoToPython>
	<generated>
	^self
]

{ #category : #accessing }
FASTPythonExceptionAssociation >> allias [
	"Relation named: #allias type: #FASTPythonVarRef opposite: #exceptionAssociation"

	<generated>
	^ allias
]

{ #category : #accessing }
FASTPythonExceptionAssociation >> allias: anObject [

	<generated>
	allias := anObject
]

{ #category : #accessing }
FASTPythonExceptionAssociation >> exception [
	"Relation named: #exception type: #FASTPythonException opposite: #exceptionAssociation"

	<generated>
	^ exception
]

{ #category : #accessing }
FASTPythonExceptionAssociation >> exception: anObject [

	<generated>
	exception := anObject
]

{ #category : #accessing }
FASTPythonExceptionAssociation >> exceptionHandler [
	"Relation named: #exceptionHandler type: #FASTPythonExceptionHandler opposite: #exceptionAssociations"

	<generated>
	^ exceptionHandler
]

{ #category : #accessing }
FASTPythonExceptionAssociation >> exceptionHandler: anObject [

	<generated>
	exceptionHandler := anObject
]
