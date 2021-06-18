Class {
	#name : #FASTPythonAttributeNav,
	#superclass : #FASTExpression,
	#traits : 'FASTPythonAssignedTarget',
	#classTraits : 'FASTPythonAssignedTarget classTrait',
	#instVars : [
		'#attributeName => FMProperty'
	],
	#category : #'PharoToPython-Entities'
}

{ #category : #meta }
FASTPythonAttributeNav class >> annotation [

	<FMClass: #AttributeNav super: #FASTExpression>
	<package: #PharoToPython>
	<generated>
	^self
]

{ #category : #accessing }
FASTPythonAttributeNav >> attributeName [

	<FMProperty: #attributeName type: #String>
	<generated>
	^ attributeName
]

{ #category : #accessing }
FASTPythonAttributeNav >> attributeName: anObject [
	<generated>
	attributeName := anObject
]

{ #category : #accessing }
FASTPythonAttributeNav >> left [
	"Relation named: #left type: #FASTExpression opposite: #attributeNav"

	<generated>
	<FMProperty: #left type: #FASTExpression opposite: #attributeNav>
	^ self attributeAt: #left ifAbsent: [ nil ]
]

{ #category : #accessing }
FASTPythonAttributeNav >> left: anObject [

	<generated>
	(self attributeAt: #left ifAbsentPut: [nil]) == anObject ifTrue: [ ^ anObject ].
	anObject ifNil: [ | otherSide |
		otherSide :=  self left.
		self attributeAt: #left put: anObject.
		otherSide attributeNav: nil ]
	ifNotNil: [ 
		self attributeAt: #left put: anObject.
		anObject attributeNav: self ]
]

{ #category : #navigation }
FASTPythonAttributeNav >> leftGroup [
	<generated>
	<navigation: 'Left'>
	^ MooseSpecializedGroup with: self left
]
