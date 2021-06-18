Class {
	#name : #FASTPythonUnOp,
	#superclass : #FASTExpression,
	#instVars : [
		'#op => FMOne type: #FASTPythonOperationSymbol opposite: #unOp'
	],
	#category : #'FASTPython-Entities'
}

{ #category : #meta }
FASTPythonUnOp class >> annotation [

	<FMClass: #UnOp super: #FASTExpression>
	<package: #FASTPython>
	<generated>
	^self
]

{ #category : #accessing }
FASTPythonUnOp >> expr [
	"Relation named: #expr type: #FASTExpression opposite: #unOp"

	<generated>
	<FMProperty: #expr type: #FASTExpression opposite: #unOp>
	^ self attributeAt: #expr ifAbsent: [ nil ]
]

{ #category : #accessing }
FASTPythonUnOp >> expr: anObject [

	<generated>
	(self attributeAt: #expr ifAbsentPut: [nil]) == anObject ifTrue: [ ^ anObject ].
	anObject ifNil: [ | otherSide |
		otherSide :=  self expr.
		self attributeAt: #expr put: anObject.
		otherSide unOp: nil ]
	ifNotNil: [ 
		self attributeAt: #expr put: anObject.
		anObject unOp: self ]
]

{ #category : #navigation }
FASTPythonUnOp >> exprGroup [
	<generated>
	<navigation: 'Expr'>
	^ MooseSpecializedGroup with: self expr
]

{ #category : #accessing }
FASTPythonUnOp >> op [
	"Relation named: #op type: #FASTPythonOperationSymbol opposite: #unOp"

	<generated>
	^ op
]

{ #category : #accessing }
FASTPythonUnOp >> op: anObject [

	<generated>
	op := anObject
]
