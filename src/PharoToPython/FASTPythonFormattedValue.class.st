Class {
	#name : #FASTPythonFormattedValue,
	#superclass : #FASTPythonEntity,
	#traits : 'FASTPythonJoinedStringItem',
	#classTraits : 'FASTPythonJoinedStringItem classTrait',
	#category : #'PharoToPython-Entities'
}

{ #category : #meta }
FASTPythonFormattedValue class >> annotation [

	<FMClass: #FormattedValue super: #FASTPythonEntity>
	<package: #PharoToPython>
	<generated>
	^self
]

{ #category : #accessing }
FASTPythonFormattedValue >> expression [
	"Relation named: #expression type: #FASTExpression opposite: #formattedValue"

	<generated>
	<FMProperty: #expression type: #FASTExpression opposite: #formattedValue>
	^ self attributeAt: #expression ifAbsent: [ nil ]
]

{ #category : #accessing }
FASTPythonFormattedValue >> expression: anObject [

	<generated>
	(self attributeAt: #expression ifAbsentPut: [nil]) == anObject ifTrue: [ ^ anObject ].
	anObject ifNil: [ | otherSide |
		otherSide :=  self expression.
		self attributeAt: #expression put: anObject.
		otherSide formattedValue: nil ]
	ifNotNil: [ 
		self attributeAt: #expression put: anObject.
		anObject formattedValue: self ]
]

{ #category : #navigation }
FASTPythonFormattedValue >> expressionGroup [
	<generated>
	<navigation: 'Expression'>
	^ MooseSpecializedGroup with: self expression
]
