Class {
	#name : #FASTPythonJoinedStr,
	#superclass : #FASTExpression,
	#instVars : [
		'#items => FMMany type: #FASTPythonJoinedStringItem opposite: #joinedStr'
	],
	#category : #'PharoToPython-Entities'
}

{ #category : #meta }
FASTPythonJoinedStr class >> annotation [

	<FMClass: #JoinedStr super: #FASTExpression>
	<package: #PharoToPython>
	<generated>
	^self
]

{ #category : #adding }
FASTPythonJoinedStr >> addItem: anObject [
	<generated>
	^ self items add: anObject
]

{ #category : #accessing }
FASTPythonJoinedStr >> items [
	"Relation named: #items type: #FASTPythonJoinedStringItem opposite: #joinedStr"

	<generated>
	<derived>
	^ items
]

{ #category : #accessing }
FASTPythonJoinedStr >> items: anObject [

	<generated>
	items value: anObject
]

{ #category : #navigation }
FASTPythonJoinedStr >> itemsGroup [
	<generated>
	<navigation: 'Items'>
	^ MooseSpecializedGroup withAll: self items asSet
]
