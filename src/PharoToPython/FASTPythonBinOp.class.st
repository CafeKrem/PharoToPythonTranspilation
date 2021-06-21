Class {
	#name : #FASTPythonBinOp,
	#superclass : #FASTExpression,
	#instVars : [
		'#op => FMProperty'
	],
	#category : #'PharoToPython-Entities'
}

{ #category : #meta }
FASTPythonBinOp class >> annotation [

	<FMClass: #BinOp super: #FASTExpression>
	<package: #PharoToPython>
	<generated>
	^self
]

{ #category : #accessing }
FASTPythonBinOp >> left [
	"Relation named: #left type: #FASTExpression opposite: #parentBinOpLeft"

	<generated>
	<FMProperty: #left type: #FASTExpression opposite: #parentBinOpLeft>
	^ self attributeAt: #left ifAbsent: [ nil ]
]

{ #category : #accessing }
FASTPythonBinOp >> left: anObject [

	<generated>
	(self attributeAt: #left ifAbsentPut: [nil]) == anObject ifTrue: [ ^ anObject ].
	anObject ifNil: [ | otherSide |
		otherSide :=  self left.
		self attributeAt: #left put: anObject.
		otherSide parentBinOpLeft: nil ]
	ifNotNil: [ 
		self attributeAt: #left put: anObject.
		anObject parentBinOpLeft: self ]
]

{ #category : #navigation }
FASTPythonBinOp >> leftGroup [
	<generated>
	<navigation: 'Left'>
	^ MooseSpecializedGroup with: self left
]

{ #category : #accessing }
FASTPythonBinOp >> op [

	<FMProperty: #op type: #String>
	<generated>
	^ op
]

{ #category : #accessing }
FASTPythonBinOp >> op: anObject [
	<generated>
	op := anObject
]

{ #category : #accessing }
FASTPythonBinOp >> right [
	"Relation named: #right type: #FASTExpression opposite: #parentBinOpRight"

	<generated>
	<FMProperty: #right type: #FASTExpression opposite: #parentBinOpRight>
	^ self attributeAt: #right ifAbsent: [ nil ]
]

{ #category : #accessing }
FASTPythonBinOp >> right: anObject [

	<generated>
	(self attributeAt: #right ifAbsentPut: [nil]) == anObject ifTrue: [ ^ anObject ].
	anObject ifNil: [ | otherSide |
		otherSide :=  self right.
		self attributeAt: #right put: anObject.
		otherSide parentBinOpRight: nil ]
	ifNotNil: [ 
		self attributeAt: #right put: anObject.
		anObject parentBinOpRight: self ]
]

{ #category : #navigation }
FASTPythonBinOp >> rightGroup [
	<generated>
	<navigation: 'Right'>
	^ MooseSpecializedGroup with: self right
]
