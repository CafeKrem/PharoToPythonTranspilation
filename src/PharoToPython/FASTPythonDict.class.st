Class {
	#name : #FASTPythonDict,
	#superclass : #FASTPythonCollection,
	#instVars : [
		'#itemsDict => FMMany type: #FASTPythonItemDict opposite: #dict'
	],
	#category : #'PharoToPython-Entities'
}

{ #category : #meta }
FASTPythonDict class >> annotation [

	<FMClass: #Dict super: #FASTPythonCollection>
	<package: #PharoToPython>
	<generated>
	^self
]

{ #category : #adding }
FASTPythonDict >> addItemsDict: anObject [
	<generated>
	^ self itemsDict add: anObject
]

{ #category : #accessing }
FASTPythonDict >> itemsDict [
	"Relation named: #itemsDict type: #FASTPythonItemDict opposite: #dict"

	<generated>
	<derived>
	^ itemsDict
]

{ #category : #accessing }
FASTPythonDict >> itemsDict: anObject [

	<generated>
	itemsDict value: anObject
]

{ #category : #navigation }
FASTPythonDict >> itemsDictGroup [
	<generated>
	<navigation: 'ItemsDict'>
	^ MooseSpecializedGroup withAll: self itemsDict asSet
]
