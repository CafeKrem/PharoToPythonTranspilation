Class {
	#name : #FASTPythonNonLocal,
	#superclass : #FASTStatement,
	#instVars : [
		'#varRef => FMOne type: #FASTPythonVarRef opposite: #nonLocal'
	],
	#category : #'PharoToPython-Entities'
}

{ #category : #meta }
FASTPythonNonLocal class >> annotation [

	<FMClass: #NonLocal super: #FASTStatement>
	<package: #PharoToPython>
	<generated>
	^self
]

{ #category : #accessing }
FASTPythonNonLocal >> varRef [
	"Relation named: #varRef type: #FASTPythonVarRef opposite: #nonLocal"

	<generated>
	^ varRef
]

{ #category : #accessing }
FASTPythonNonLocal >> varRef: anObject [

	<generated>
	varRef := anObject
]

{ #category : #navigation }
FASTPythonNonLocal >> varRefGroup [
	<generated>
	<navigation: 'VarRef'>
	^ MooseSpecializedGroup with: self varRef
]
