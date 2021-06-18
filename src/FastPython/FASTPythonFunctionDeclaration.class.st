Class {
	#name : #FASTPythonFunctionDeclaration,
	#superclass : #FASTStatement,
	#instVars : [
		'#parameters => FMMany type: #FASTPythonParameter opposite: #functionDeclaration'
	],
	#category : #'FASTPython-Entities'
}

{ #category : #meta }
FASTPythonFunctionDeclaration class >> annotation [

	<FMClass: #FunctionDeclaration super: #FASTStatement>
	<package: #FASTPython>
	<generated>
	^self
]

{ #category : #adding }
FASTPythonFunctionDeclaration >> addBody: anObject [
	<generated>
	^ self body add: anObject
]

{ #category : #adding }
FASTPythonFunctionDeclaration >> addDecorateur: anObject [
	<generated>
	^ self decorateurs add: anObject
]

{ #category : #adding }
FASTPythonFunctionDeclaration >> addParameter: anObject [
	<generated>
	^ self parameters add: anObject
]

{ #category : #accessing }
FASTPythonFunctionDeclaration >> body [
	"Relation named: #body type: #FASTStatement opposite: #functionDeclaration"

	<generated>
	<derived>
	<FMProperty: #body type: #FASTStatement opposite: #functionDeclaration>
	^ self attributeAt: #body ifAbsentPut: [ FMMultivalueLink on: self opposite: #functionDeclaration: ]
]

{ #category : #accessing }
FASTPythonFunctionDeclaration >> body: anObject [

	<generated>
	self body value: anObject
]

{ #category : #navigation }
FASTPythonFunctionDeclaration >> bodyGroup [
	<generated>
	<navigation: 'Body'>
	^ MooseSpecializedGroup withAll: self body asSet
]

{ #category : #accessing }
FASTPythonFunctionDeclaration >> decorateurs [
	"Relation named: #decorateurs type: #FASTExpression opposite: #functionDeclaration"

	<generated>
	<derived>
	<FMProperty: #decorateurs type: #FASTExpression opposite: #functionDeclaration>
	^ self attributeAt: #decorateurs ifAbsentPut: [ FMMultivalueLink on: self opposite: #functionDeclaration: ]
]

{ #category : #accessing }
FASTPythonFunctionDeclaration >> decorateurs: anObject [

	<generated>
	self decorateurs value: anObject
]

{ #category : #accessing }
FASTPythonFunctionDeclaration >> parameters [
	"Relation named: #parameters type: #FASTPythonParameter opposite: #functionDeclaration"

	<generated>
	<derived>
	^ parameters
]

{ #category : #accessing }
FASTPythonFunctionDeclaration >> parameters: anObject [

	<generated>
	parameters value: anObject
]

{ #category : #navigation }
FASTPythonFunctionDeclaration >> parametersGroup [
	<generated>
	<navigation: 'Parameters'>
	^ MooseSpecializedGroup withAll: self parameters asSet
]
