Class {
	#name : #FASTPythonSlice,
	#superclass : #FASTPythonEntity,
	#traits : 'FASTPythonSubscriptionIndex',
	#classTraits : 'FASTPythonSubscriptionIndex classTrait',
	#category : #'PharoToPython-Entities'
}

{ #category : #meta }
FASTPythonSlice class >> annotation [

	<FMClass: #Slice super: #FASTPythonEntity>
	<package: #PharoToPython>
	<generated>
	^self
]

{ #category : #accessing }
FASTPythonSlice >> lower [
	"Relation named: #lower type: #FASTExpression opposite: #slice"

	<generated>
	<FMProperty: #lower type: #FASTExpression opposite: #slice>
	^ self attributeAt: #lower ifAbsent: [ nil ]
]

{ #category : #accessing }
FASTPythonSlice >> lower: anObject [

	<generated>
	(self attributeAt: #lower ifAbsentPut: [nil]) == anObject ifTrue: [ ^ anObject ].
	anObject ifNil: [ | otherSide |
		otherSide :=  self lower.
		self attributeAt: #lower put: anObject.
		otherSide slice: nil ]
	ifNotNil: [ 
		self attributeAt: #lower put: anObject.
		anObject slice: self ]
]

{ #category : #navigation }
FASTPythonSlice >> lowerGroup [
	<generated>
	<navigation: 'Lower'>
	^ MooseSpecializedGroup with: self lower
]

{ #category : #accessing }
FASTPythonSlice >> step [
	"Relation named: #step type: #FASTExpression opposite: #slice"

	<generated>
	<FMProperty: #step type: #FASTExpression opposite: #slice>
	^ self attributeAt: #step ifAbsent: [ nil ]
]

{ #category : #accessing }
FASTPythonSlice >> step: anObject [

	<generated>
	(self attributeAt: #step ifAbsentPut: [nil]) == anObject ifTrue: [ ^ anObject ].
	anObject ifNil: [ | otherSide |
		otherSide :=  self step.
		self attributeAt: #step put: anObject.
		otherSide slice: nil ]
	ifNotNil: [ 
		self attributeAt: #step put: anObject.
		anObject slice: self ]
]

{ #category : #navigation }
FASTPythonSlice >> stepGroup [
	<generated>
	<navigation: 'Step'>
	^ MooseSpecializedGroup with: self step
]

{ #category : #accessing }
FASTPythonSlice >> upper [
	"Relation named: #upper type: #FASTExpression opposite: #slice"

	<generated>
	<FMProperty: #upper type: #FASTExpression opposite: #slice>
	^ self attributeAt: #upper ifAbsent: [ nil ]
]

{ #category : #accessing }
FASTPythonSlice >> upper: anObject [

	<generated>
	(self attributeAt: #upper ifAbsentPut: [nil]) == anObject ifTrue: [ ^ anObject ].
	anObject ifNil: [ | otherSide |
		otherSide :=  self upper.
		self attributeAt: #upper put: anObject.
		otherSide slice: nil ]
	ifNotNil: [ 
		self attributeAt: #upper put: anObject.
		anObject slice: self ]
]

{ #category : #navigation }
FASTPythonSlice >> upperGroup [
	<generated>
	<navigation: 'Upper'>
	^ MooseSpecializedGroup with: self upper
]
