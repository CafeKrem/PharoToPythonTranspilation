Class {
	#name : #FASTPythonList,
	#superclass : #FASTPythonCollection,
	#category : #'PharoToPython-Entities'
}

{ #category : #meta }
FASTPythonList class >> annotation [

	<FMClass: #List super: #FASTPythonCollection>
	<package: #PharoToPython>
	<generated>
	^self
]

{ #category : #adding }
FASTPythonList >> addContent: anObject [
	<generated>
	^ self contents add: anObject
]

{ #category : #accessing }
FASTPythonList >> contents [
	"Relation named: #contents type: #FASTExpression opposite: #list"

	<generated>
	<derived>
	<FMProperty: #contents type: #FASTExpression opposite: #list>
	^ self attributeAt: #contents ifAbsentPut: [ FMMultivalueLink on: self opposite: #list: ]
]

{ #category : #accessing }
FASTPythonList >> contents: anObject [

	<generated>
	self contents value: anObject
]

{ #category : #navigation }
FASTPythonList >> contentsGroup [
	<generated>
	<navigation: 'Contents'>
	^ MooseSpecializedGroup withAll: self contents asSet
]
