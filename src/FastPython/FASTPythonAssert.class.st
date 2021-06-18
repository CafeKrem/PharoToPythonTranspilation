Class {
	#name : #FASTPythonAssert,
	#superclass : #FASTStatement,
	#category : #'FASTPython-Entities'
}

{ #category : #meta }
FASTPythonAssert class >> annotation [

	<FMClass: #Assert super: #FASTStatement>
	<package: #FASTPython>
	<generated>
	^self
]

{ #category : #accessing }
FASTPythonAssert >> conditional [
	"Relation named: #conditional type: #FASTExpression opposite: #assert"

	<generated>
	<FMProperty: #conditional type: #FASTExpression opposite: #assert>
	^ self attributeAt: #conditional ifAbsent: [ nil ]
]

{ #category : #accessing }
FASTPythonAssert >> conditional: anObject [

	<generated>
	(self attributeAt: #conditional ifAbsentPut: [nil]) == anObject ifTrue: [ ^ anObject ].
	anObject ifNil: [ | otherSide |
		otherSide :=  self conditional.
		self attributeAt: #conditional put: anObject.
		otherSide assert: nil ]
	ifNotNil: [ 
		self attributeAt: #conditional put: anObject.
		anObject assert: self ]
]

{ #category : #navigation }
FASTPythonAssert >> conditionalGroup [
	<generated>
	<navigation: 'Conditional'>
	^ MooseSpecializedGroup with: self conditional
]

{ #category : #accessing }
FASTPythonAssert >> message [
	"Relation named: #message type: #FASTExpression opposite: #assert"

	<generated>
	<FMProperty: #message type: #FASTExpression opposite: #assert>
	^ self attributeAt: #message ifAbsent: [ nil ]
]

{ #category : #accessing }
FASTPythonAssert >> message: anObject [

	<generated>
	(self attributeAt: #message ifAbsentPut: [nil]) == anObject ifTrue: [ ^ anObject ].
	anObject ifNil: [ | otherSide |
		otherSide :=  self message.
		self attributeAt: #message put: anObject.
		otherSide assert: nil ]
	ifNotNil: [ 
		self attributeAt: #message put: anObject.
		anObject assert: self ]
]

{ #category : #navigation }
FASTPythonAssert >> messageGroup [
	<generated>
	<navigation: 'Message'>
	^ MooseSpecializedGroup with: self message
]
