Class {
	#name : #FASTPythonComprehensionExpression,
	#superclass : #FASTPythonLiteral,
	#instVars : [
		'#comprehension => FMOne type: #FASTPythonComprehension opposite: #comprehensionExpression'
	],
	#category : #'FASTPython-Entities'
}

{ #category : #meta }
FASTPythonComprehensionExpression class >> annotation [

	<FMClass: #ComprehensionExpression super: #FASTPythonLiteral>
	<package: #FASTPython>
	<generated>
	^self
]

{ #category : #accessing }
FASTPythonComprehensionExpression >> comprehension [
	"Relation named: #comprehension type: #FASTPythonComprehension opposite: #comprehensionExpression"

	<generated>
	^ comprehension
]

{ #category : #accessing }
FASTPythonComprehensionExpression >> comprehension: anObject [

	<generated>
	comprehension := anObject
]

{ #category : #navigation }
FASTPythonComprehensionExpression >> comprehensionGroup [
	<generated>
	<navigation: 'Comprehension'>
	^ MooseSpecializedGroup with: self comprehension
]

{ #category : #accessing }
FASTPythonComprehensionExpression >> elt [
	"Relation named: #elt type: #FASTExpression opposite: #comprehensionExpression"

	<generated>
	<FMProperty: #elt type: #FASTExpression opposite: #comprehensionExpression>
	^ self attributeAt: #elt ifAbsent: [ nil ]
]

{ #category : #accessing }
FASTPythonComprehensionExpression >> elt: anObject [

	<generated>
	(self attributeAt: #elt ifAbsentPut: [nil]) == anObject ifTrue: [ ^ anObject ].
	anObject ifNil: [ | otherSide |
		otherSide :=  self elt.
		self attributeAt: #elt put: anObject.
		otherSide comprehensionExpression: nil ]
	ifNotNil: [ 
		self attributeAt: #elt put: anObject.
		anObject comprehensionExpression: self ]
]

{ #category : #navigation }
FASTPythonComprehensionExpression >> eltGroup [
	<generated>
	<navigation: 'Elt'>
	^ MooseSpecializedGroup with: self elt
]
