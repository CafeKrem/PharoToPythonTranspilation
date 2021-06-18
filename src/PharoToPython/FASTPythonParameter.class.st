Class {
	#name : #FASTPythonParameter,
	#superclass : #FASTPythonEntity,
	#instVars : [
		'#name => FMProperty',
		'#functionDeclaration => FMOne type: #FASTPythonFunctionDeclaration opposite: #parameters'
	],
	#category : #'PharoToPython-Entities'
}

{ #category : #meta }
FASTPythonParameter class >> annotation [

	<FMClass: #Parameter super: #FASTPythonEntity>
	<package: #PharoToPython>
	<generated>
	^self
]

{ #category : #accessing }
FASTPythonParameter >> functionDeclaration [
	"Relation named: #functionDeclaration type: #FASTPythonFunctionDeclaration opposite: #parameters"

	<generated>
	<container>
	^ functionDeclaration
]

{ #category : #accessing }
FASTPythonParameter >> functionDeclaration: anObject [

	<generated>
	functionDeclaration := anObject
]

{ #category : #navigation }
FASTPythonParameter >> functionDeclarationGroup [
	<generated>
	<navigation: 'FunctionDeclaration'>
	^ MooseSpecializedGroup with: self functionDeclaration
]

{ #category : #accessing }
FASTPythonParameter >> name [

	<FMProperty: #name type: #String>
	<generated>
	^ name
]

{ #category : #accessing }
FASTPythonParameter >> name: anObject [
	<generated>
	name := anObject
]
