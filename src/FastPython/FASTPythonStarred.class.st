Class {
	#name : #FASTPythonStarred,
	#superclass : #FASTExpression,
	#category : #'FASTPython-Entities'
}

{ #category : #meta }
FASTPythonStarred class >> annotation [

	<FMClass: #Starred super: #FASTExpression>
	<package: #FASTPython>
	<generated>
	^self
]

{ #category : #accessing }
FASTPythonStarred >> expr [
	"Relation named: #expr type: #FASTExpression opposite: #starred"

	<generated>
	<FMProperty: #expr type: #FASTExpression opposite: #starred>
	^ self attributeAt: #expr ifAbsent: [ nil ]
]

{ #category : #accessing }
FASTPythonStarred >> expr: anObject [

	<generated>
	(self attributeAt: #expr ifAbsentPut: [nil]) == anObject ifTrue: [ ^ anObject ].
	anObject ifNil: [ | otherSide |
		otherSide :=  self expr.
		self attributeAt: #expr put: anObject.
		otherSide starred: nil ]
	ifNotNil: [ 
		self attributeAt: #expr put: anObject.
		anObject starred: self ]
]

{ #category : #navigation }
FASTPythonStarred >> exprGroup [
	<generated>
	<navigation: 'Expr'>
	^ MooseSpecializedGroup with: self expr
]
