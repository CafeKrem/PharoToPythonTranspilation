Class {
	#name : #FASTPythonTuple,
	#superclass : #FASTPythonCollection,
	#traits : 'FASTPythonAssignedTarget',
	#classTraits : 'FASTPythonAssignedTarget classTrait',
	#category : #'FASTPython-Entities'
}

{ #category : #meta }
FASTPythonTuple class >> annotation [

	<FMClass: #Tuple super: #FASTPythonCollection>
	<package: #FASTPython>
	<generated>
	^self
]

{ #category : #adding }
FASTPythonTuple >> addContent: anObject [
	<generated>
	^ self contents add: anObject
]

{ #category : #accessing }
FASTPythonTuple >> contents [
	"Relation named: #contents type: #FASTExpression opposite: #tuple"

	<generated>
	<derived>
	<FMProperty: #contents type: #FASTExpression opposite: #tuple>
	^ self attributeAt: #contents ifAbsentPut: [ FMMultivalueLink on: self opposite: #tuple: ]
]

{ #category : #accessing }
FASTPythonTuple >> contents: anObject [

	<generated>
	self contents value: anObject
]

{ #category : #navigation }
FASTPythonTuple >> contentsGroup [
	<generated>
	<navigation: 'Contents'>
	^ MooseSpecializedGroup withAll: self contents asSet
]
