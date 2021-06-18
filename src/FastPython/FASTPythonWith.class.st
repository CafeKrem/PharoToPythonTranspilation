Class {
	#name : #FASTPythonWith,
	#superclass : #FASTStatement,
	#traits : 'FASTPythonAsynchronable',
	#classTraits : 'FASTPythonAsynchronable classTrait',
	#instVars : [
		'#withItems => FMMany type: #FASTPythonWithItem opposite: #with'
	],
	#category : #'FASTPython-Entities'
}

{ #category : #meta }
FASTPythonWith class >> annotation [

	<FMClass: #With super: #FASTStatement>
	<package: #FASTPython>
	<generated>
	^self
]

{ #category : #adding }
FASTPythonWith >> addWithItem: anObject [
	<generated>
	^ self withItems add: anObject
]

{ #category : #accessing }
FASTPythonWith >> withItems [
	"Relation named: #withItems type: #FASTPythonWithItem opposite: #with"

	<generated>
	<derived>
	^ withItems
]

{ #category : #accessing }
FASTPythonWith >> withItems: anObject [

	<generated>
	withItems value: anObject
]

{ #category : #navigation }
FASTPythonWith >> withItemsGroup [
	<generated>
	<navigation: 'WithItems'>
	^ MooseSpecializedGroup withAll: self withItems asSet
]
