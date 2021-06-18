Class {
	#name : #FASTPythonSubscript,
	#superclass : #FASTExpression,
	#traits : 'FASTPythonAssignedTarget',
	#classTraits : 'FASTPythonAssignedTarget classTrait',
	#instVars : [
		'#index => FMOne type: #FASTPythonSubscriptionIndex opposite: #parentSubscription'
	],
	#category : #'FASTPython-Entities'
}

{ #category : #meta }
FASTPythonSubscript class >> annotation [

	<FMClass: #Subscript super: #FASTExpression>
	<package: #FASTPython>
	<generated>
	^self
]

{ #category : #accessing }
FASTPythonSubscript >> index [
	"Relation named: #index type: #FASTPythonSubscriptionIndex opposite: #parentSubscription"

	<generated>
	<derived>
	^ index
]

{ #category : #accessing }
FASTPythonSubscript >> index: anObject [

	<generated>
	index := anObject
]

{ #category : #navigation }
FASTPythonSubscript >> indexGroup [
	<generated>
	<navigation: 'Index'>
	^ MooseSpecializedGroup with: self index
]

{ #category : #accessing }
FASTPythonSubscript >> value [
	"Relation named: #value type: #FASTExpression opposite: #subscript"

	<generated>
	<FMProperty: #value type: #FASTExpression opposite: #subscript>
	^ self attributeAt: #value ifAbsent: [ nil ]
]

{ #category : #accessing }
FASTPythonSubscript >> value: anObject [

	<generated>
	(self attributeAt: #value ifAbsentPut: [nil]) == anObject ifTrue: [ ^ anObject ].
	anObject ifNil: [ | otherSide |
		otherSide :=  self value.
		self attributeAt: #value put: anObject.
		otherSide subscript: nil ]
	ifNotNil: [ 
		self attributeAt: #value put: anObject.
		anObject subscript: self ]
]

{ #category : #navigation }
FASTPythonSubscript >> valueGroup [
	<generated>
	<navigation: 'Value'>
	^ MooseSpecializedGroup with: self value
]
