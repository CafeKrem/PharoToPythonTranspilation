Class {
	#name : #FASTPythonWhile,
	#superclass : #FASTStatement,
	#category : #'FASTPython-Entities'
}

{ #category : #meta }
FASTPythonWhile class >> annotation [

	<FMClass: #While super: #FASTStatement>
	<package: #FASTPython>
	<generated>
	^self
]

{ #category : #adding }
FASTPythonWhile >> addBody: anObject [
	<generated>
	^ self body add: anObject
]

{ #category : #accessing }
FASTPythonWhile >> body [
	"Relation named: #body type: #FASTStatement opposite: #while"

	<generated>
	<derived>
	<FMProperty: #body type: #FASTStatement opposite: #while>
	^ self attributeAt: #body ifAbsentPut: [ FMMultivalueLink on: self opposite: #while: ]
]

{ #category : #accessing }
FASTPythonWhile >> body: anObject [

	<generated>
	self body value: anObject
]

{ #category : #navigation }
FASTPythonWhile >> bodyGroup [
	<generated>
	<navigation: 'Body'>
	^ MooseSpecializedGroup withAll: self body asSet
]

{ #category : #accessing }
FASTPythonWhile >> cond [
	"Relation named: #cond type: #FASTExpression opposite: #while"

	<generated>
	<FMProperty: #cond type: #FASTExpression opposite: #while>
	^ self attributeAt: #cond ifAbsent: [ nil ]
]

{ #category : #accessing }
FASTPythonWhile >> cond: anObject [

	<generated>
	(self attributeAt: #cond ifAbsentPut: [nil]) == anObject ifTrue: [ ^ anObject ].
	anObject ifNil: [ | otherSide |
		otherSide :=  self cond.
		self attributeAt: #cond put: anObject.
		otherSide while: nil ]
	ifNotNil: [ 
		self attributeAt: #cond put: anObject.
		anObject while: self ]
]

{ #category : #navigation }
FASTPythonWhile >> condGroup [
	<generated>
	<navigation: 'Cond'>
	^ MooseSpecializedGroup with: self cond
]
