Class {
	#name : #FASTPythonSet,
	#superclass : #FASTPythonCollection,
	#category : #'FASTPython-Entities'
}

{ #category : #meta }
FASTPythonSet class >> annotation [

	<FMClass: #Set super: #FASTPythonCollection>
	<package: #FASTPython>
	<generated>
	^self
]

{ #category : #adding }
FASTPythonSet >> addContent: anObject [
	<generated>
	^ self contents add: anObject
]

{ #category : #accessing }
FASTPythonSet >> contents [
	"Relation named: #contents type: #FASTExpression opposite: #set"

	<generated>
	<derived>
	<FMProperty: #contents type: #FASTExpression opposite: #set>
	^ self attributeAt: #contents ifAbsentPut: [ FMMultivalueLink on: self opposite: #set: ]
]

{ #category : #accessing }
FASTPythonSet >> contents: anObject [

	<generated>
	self contents value: anObject
]

{ #category : #navigation }
FASTPythonSet >> contentsGroup [
	<generated>
	<navigation: 'Contents'>
	^ MooseSpecializedGroup withAll: self contents asSet
]
