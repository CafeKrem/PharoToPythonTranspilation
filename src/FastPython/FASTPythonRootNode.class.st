Class {
	#name : #FASTPythonRootNode,
	#superclass : #FASTPythonEntity,
	#category : #'FASTPython-Entities'
}

{ #category : #meta }
FASTPythonRootNode class >> annotation [

	<FMClass: #RootNode super: #FASTPythonEntity>
	<package: #FASTPython>
	<generated>
	^self
]

{ #category : #adding }
FASTPythonRootNode >> addStatement: anObject [
	<generated>
	^ self statements add: anObject
]

{ #category : #accessing }
FASTPythonRootNode >> statements [
	"Relation named: #statements type: #FASTStatement opposite: #rootNode"

	<generated>
	<derived>
	<FMProperty: #statements type: #FASTStatement opposite: #rootNode>
	^ self attributeAt: #statements ifAbsentPut: [ FMMultivalueLink on: self opposite: #rootNode: ]
]

{ #category : #accessing }
FASTPythonRootNode >> statements: anObject [

	<generated>
	self statements value: anObject
]

{ #category : #navigation }
FASTPythonRootNode >> statementsGroup [
	<generated>
	<navigation: 'Statements'>
	^ MooseSpecializedGroup withAll: self statements asSet
]
