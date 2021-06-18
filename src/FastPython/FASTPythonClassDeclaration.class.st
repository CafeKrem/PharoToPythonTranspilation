Class {
	#name : #FASTPythonClassDeclaration,
	#superclass : #FASTStatement,
	#instVars : [
		'#superClasses => FMMany type: #FASTPythonVarRef opposite: #classDeclaration'
	],
	#category : #'FASTPython-Entities'
}

{ #category : #meta }
FASTPythonClassDeclaration class >> annotation [

	<FMClass: #ClassDeclaration super: #FASTStatement>
	<package: #FASTPython>
	<generated>
	^self
]

{ #category : #adding }
FASTPythonClassDeclaration >> addBody: anObject [
	<generated>
	^ self body add: anObject
]

{ #category : #adding }
FASTPythonClassDeclaration >> addSuperClass: anObject [
	<generated>
	^ self superClasses add: anObject
]

{ #category : #accessing }
FASTPythonClassDeclaration >> body [
	"Relation named: #body type: #FASTStatement opposite: #classDeclaration"

	<generated>
	<derived>
	<FMProperty: #body type: #FASTStatement opposite: #classDeclaration>
	^ self attributeAt: #body ifAbsentPut: [ FMMultivalueLink on: self opposite: #classDeclaration: ]
]

{ #category : #accessing }
FASTPythonClassDeclaration >> body: anObject [

	<generated>
	self body value: anObject
]

{ #category : #navigation }
FASTPythonClassDeclaration >> bodyGroup [
	<generated>
	<navigation: 'Body'>
	^ MooseSpecializedGroup withAll: self body asSet
]

{ #category : #accessing }
FASTPythonClassDeclaration >> superClasses [
	"Relation named: #superClasses type: #FASTPythonVarRef opposite: #classDeclaration"

	<generated>
	<derived>
	^ superClasses
]

{ #category : #accessing }
FASTPythonClassDeclaration >> superClasses: anObject [

	<generated>
	superClasses value: anObject
]
