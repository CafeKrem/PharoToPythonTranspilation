Class {
	#name : #FASTPythonGlobal,
	#superclass : #FASTStatement,
	#instVars : [
		'#varRef => FMOne type: #FASTPythonVarRef opposite: #global'
	],
	#category : #'PharoToPython-Entities'
}

{ #category : #meta }
FASTPythonGlobal class >> annotation [

	<FMClass: #Global super: #FASTStatement>
	<package: #PharoToPython>
	<generated>
	^self
]

{ #category : #accessing }
FASTPythonGlobal >> varRef [
	"Relation named: #varRef type: #FASTPythonVarRef opposite: #global"

	<generated>
	^ varRef
]

{ #category : #accessing }
FASTPythonGlobal >> varRef: anObject [

	<generated>
	varRef := anObject
]

{ #category : #navigation }
FASTPythonGlobal >> varRefGroup [
	<generated>
	<navigation: 'VarRef'>
	^ MooseSpecializedGroup with: self varRef
]
