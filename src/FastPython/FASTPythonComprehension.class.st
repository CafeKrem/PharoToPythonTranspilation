Class {
	#name : #FASTPythonComprehension,
	#superclass : #FASTPythonEntity,
	#instVars : [
		'#comprehensionExpression => FMOne type: #FASTPythonComprehensionExpression opposite: #comprehension'
	],
	#category : #'FASTPython-Entities'
}

{ #category : #meta }
FASTPythonComprehension class >> annotation [

	<FMClass: #Comprehension super: #FASTPythonEntity>
	<package: #FASTPython>
	<generated>
	^self
]

{ #category : #adding }
FASTPythonComprehension >> addIf: anObject [
	<generated>
	^ self ifs add: anObject
]

{ #category : #accessing }
FASTPythonComprehension >> comprehensionExpression [
	"Relation named: #comprehensionExpression type: #FASTPythonComprehensionExpression opposite: #comprehension"

	<generated>
	<container>
	<derived>
	^ comprehensionExpression
]

{ #category : #accessing }
FASTPythonComprehension >> comprehensionExpression: anObject [

	<generated>
	comprehensionExpression := anObject
]

{ #category : #navigation }
FASTPythonComprehension >> comprehensionExpressionGroup [
	<generated>
	<navigation: 'ComprehensionExpression'>
	^ MooseSpecializedGroup with: self comprehensionExpression
]

{ #category : #accessing }
FASTPythonComprehension >> ifs [
	"Relation named: #ifs type: #FASTExpression opposite: #parentIfs"

	<generated>
	<derived>
	<FMProperty: #ifs type: #FASTExpression opposite: #parentIfs>
	^ self attributeAt: #ifs ifAbsentPut: [ FMMultivalueLink on: self opposite: #parentIfs: ]
]

{ #category : #accessing }
FASTPythonComprehension >> ifs: anObject [

	<generated>
	self ifs value: anObject
]

{ #category : #navigation }
FASTPythonComprehension >> ifsGroup [
	<generated>
	<navigation: 'Ifs'>
	^ MooseSpecializedGroup withAll: self ifs asSet
]

{ #category : #accessing }
FASTPythonComprehension >> iterable [
	"Relation named: #iterable type: #FASTExpression opposite: #parentComprehensionIterable"

	<generated>
	<FMProperty: #iterable type: #FASTExpression opposite: #parentComprehensionIterable>
	^ self attributeAt: #iterable ifAbsent: [ nil ]
]

{ #category : #accessing }
FASTPythonComprehension >> iterable: anObject [

	<generated>
	(self attributeAt: #iterable ifAbsentPut: [nil]) == anObject ifTrue: [ ^ anObject ].
	anObject ifNil: [ | otherSide |
		otherSide :=  self iterable.
		self attributeAt: #iterable put: anObject.
		otherSide parentComprehensionIterable: nil ]
	ifNotNil: [ 
		self attributeAt: #iterable put: anObject.
		anObject parentComprehensionIterable: self ]
]

{ #category : #navigation }
FASTPythonComprehension >> iterableGroup [
	<generated>
	<navigation: 'Iterable'>
	^ MooseSpecializedGroup with: self iterable
]

{ #category : #accessing }
FASTPythonComprehension >> target [
	"Relation named: #target type: #FASTExpression opposite: #parentTarget"

	<generated>
	<FMProperty: #target type: #FASTExpression opposite: #parentTarget>
	^ self attributeAt: #target ifAbsent: [ nil ]
]

{ #category : #accessing }
FASTPythonComprehension >> target: anObject [

	<generated>
	(self attributeAt: #target ifAbsentPut: [nil]) == anObject ifTrue: [ ^ anObject ].
	anObject ifNil: [ | otherSide |
		otherSide :=  self target.
		self attributeAt: #target put: anObject.
		otherSide parentTarget: nil ]
	ifNotNil: [ 
		self attributeAt: #target put: anObject.
		anObject parentTarget: self ]
]

{ #category : #navigation }
FASTPythonComprehension >> targetGroup [
	<generated>
	<navigation: 'Target'>
	^ MooseSpecializedGroup with: self target
]
