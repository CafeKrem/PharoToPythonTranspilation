Class {
	#name : #FASTPythonInteger,
	#superclass : #FASTPythonLiteral,
	#instVars : [
		'#value => FMProperty'
	],
	#category : #'PharoToPython-Entities'
}

{ #category : #meta }
FASTPythonInteger class >> annotation [

	<FMClass: #Integer super: #FASTPythonLiteral>
	<package: #PharoToPython>
	<generated>
	^self
]

{ #category : #accessing }
FASTPythonInteger >> value [

	<FMProperty: #value type: #Number>
	<generated>
	^ value
]

{ #category : #accessing }
FASTPythonInteger >> value: anObject [
	<generated>
	value := anObject
]
