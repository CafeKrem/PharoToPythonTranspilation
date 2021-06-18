Class {
	#name : #FASTPythonWithItem,
	#superclass : #FASTPythonEntity,
	#instVars : [
		'#with => FMOne type: #FASTPythonWith opposite: #withItems'
	],
	#category : #'PharoToPython-Entities'
}

{ #category : #meta }
FASTPythonWithItem class >> annotation [

	<FMClass: #WithItem super: #FASTPythonEntity>
	<package: #PharoToPython>
	<generated>
	^self
]

{ #category : #accessing }
FASTPythonWithItem >> contextExpression [
	"Relation named: #contextExpression type: #FASTExpression opposite: #withItem"

	<generated>
	<FMProperty: #contextExpression type: #FASTExpression opposite: #withItem>
	^ self attributeAt: #contextExpression ifAbsent: [ nil ]
]

{ #category : #accessing }
FASTPythonWithItem >> contextExpression: anObject [

	<generated>
	(self attributeAt: #contextExpression ifAbsentPut: [nil]) == anObject ifTrue: [ ^ anObject ].
	anObject ifNil: [ | otherSide |
		otherSide :=  self contextExpression.
		self attributeAt: #contextExpression put: anObject.
		otherSide withItem: nil ]
	ifNotNil: [ 
		self attributeAt: #contextExpression put: anObject.
		anObject withItem: self ]
]

{ #category : #navigation }
FASTPythonWithItem >> contextExpressionGroup [
	<generated>
	<navigation: 'ContextExpression'>
	^ MooseSpecializedGroup with: self contextExpression
]

{ #category : #accessing }
FASTPythonWithItem >> target [
	"Relation named: #target type: #FASTExpression opposite: #withItem"

	<generated>
	<FMProperty: #target type: #FASTExpression opposite: #withItem>
	^ self attributeAt: #target ifAbsent: [ nil ]
]

{ #category : #accessing }
FASTPythonWithItem >> target: anObject [

	<generated>
	(self attributeAt: #target ifAbsentPut: [nil]) == anObject ifTrue: [ ^ anObject ].
	anObject ifNil: [ | otherSide |
		otherSide :=  self target.
		self attributeAt: #target put: anObject.
		otherSide withItem: nil ]
	ifNotNil: [ 
		self attributeAt: #target put: anObject.
		anObject withItem: self ]
]

{ #category : #navigation }
FASTPythonWithItem >> targetGroup [
	<generated>
	<navigation: 'Target'>
	^ MooseSpecializedGroup with: self target
]

{ #category : #accessing }
FASTPythonWithItem >> with [
	"Relation named: #with type: #FASTPythonWith opposite: #withItems"

	<generated>
	<container>
	^ with
]

{ #category : #accessing }
FASTPythonWithItem >> with: anObject [

	<generated>
	with := anObject
]

{ #category : #navigation }
FASTPythonWithItem >> withGroup [
	<generated>
	<navigation: 'With'>
	^ MooseSpecializedGroup with: self with
]
