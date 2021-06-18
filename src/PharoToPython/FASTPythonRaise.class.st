Class {
	#name : #FASTPythonRaise,
	#superclass : #FASTStatement,
	#instVars : [
		'#exception => FMOne type: #FASTPythonException opposite: #raise'
	],
	#category : #'PharoToPython-Entities'
}

{ #category : #meta }
FASTPythonRaise class >> annotation [

	<FMClass: #Raise super: #FASTStatement>
	<package: #PharoToPython>
	<generated>
	^self
]

{ #category : #accessing }
FASTPythonRaise >> exception [
	"Relation named: #exception type: #FASTPythonException opposite: #raise"

	<generated>
	^ exception
]

{ #category : #accessing }
FASTPythonRaise >> exception: anObject [

	<generated>
	exception := anObject
]
