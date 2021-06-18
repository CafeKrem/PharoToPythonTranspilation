Class {
	#name : #FASTPythonBinOp,
	#superclass : #FASTExpression,
	#instVars : [
		'#op => FMMany type: #FASTPythonOperationSymbol opposite: #binOp'
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
	"Relation named: #left type: #FASTExpression opposite: #binOp"

	<generated>
	<FMProperty: #left type: #FASTExpression opposite: #binOp>
	^ self attributeAt: #left ifAbsent: [ nil ]
]

{ #category : #accessing }
FASTPythonBinOp >> left: anObject [

	<generated>
	(self attributeAt: #left ifAbsentPut: [nil]) == anObject ifTrue: [ ^ anObject ].
	anObject ifNil: [ | otherSide |
		otherSide :=  self left.
		self attributeAt: #left put: anObject.
		otherSide binOp: nil ]
	ifNotNil: [ 
		self attributeAt: #left put: anObject.
		anObject binOp: self ]
]

{ #category : #navigation }
FASTPythonBinOp >> leftGroup [
	<generated>
	<navigation: 'Left'>
	^ MooseSpecializedGroup with: self left
]

{ #category : #accessing }
FASTPythonBinOp >> op [
	"Relation named: #op type: #FASTPythonOperationSymbol opposite: #binOp"

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
	"Relation named: #right type: #FASTExpression opposite: #binOp"

	<generated>
	<FMProperty: #right type: #FASTExpression opposite: #binOp>
	^ self attributeAt: #right ifAbsent: [ nil ]
]

{ #category : #accessing }
FASTPythonBinOp >> right: anObject [

	<generated>
	(self attributeAt: #right ifAbsentPut: [nil]) == anObject ifTrue: [ ^ anObject ].
	anObject ifNil: [ | otherSide |
		otherSide :=  self right.
		self attributeAt: #right put: anObject.
		otherSide binOp: nil ]
	ifNotNil: [ 
		self attributeAt: #right put: anObject.
		anObject binOp: self ]
]

{ #category : #navigation }
FASTPythonBinOp >> rightGroup [
	<generated>
	<navigation: 'Right'>
	^ MooseSpecializedGroup with: self right
]
