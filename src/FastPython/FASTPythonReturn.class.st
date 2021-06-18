Class {
	#name : #FASTPythonReturn,
	#superclass : #FASTReturnStatement,
	#category : #'FASTPython-Entities'
}

{ #category : #meta }
FASTPythonReturn class >> annotation [

	<FMClass: #Return super: #FASTReturnStatement>
	<package: #FASTPython>
	<generated>
	^self
]

{ #category : #accessing }
FASTPythonReturn >> returnValue [
	"Relation named: #returnValue type: #FASTExpression opposite: #return"

	<generated>
	<FMProperty: #returnValue type: #FASTExpression opposite: #return>
	^ self attributeAt: #returnValue ifAbsent: [ nil ]
]

{ #category : #accessing }
FASTPythonReturn >> returnValue: anObject [

	<generated>
	(self attributeAt: #returnValue ifAbsentPut: [nil]) == anObject ifTrue: [ ^ anObject ].
	anObject ifNil: [ | otherSide |
		otherSide :=  self returnValue.
		self attributeAt: #returnValue put: anObject.
		otherSide return: nil ]
	ifNotNil: [ 
		self attributeAt: #returnValue put: anObject.
		anObject return: self ]
]

{ #category : #navigation }
FASTPythonReturn >> returnValueGroup [
	<generated>
	<navigation: 'ReturnValue'>
	^ MooseSpecializedGroup with: self returnValue
]
