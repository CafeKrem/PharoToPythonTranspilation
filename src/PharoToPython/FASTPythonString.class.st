Class {
	#name : #FASTPythonString,
	#superclass : #FASTPythonLiteral,
	#traits : 'FASTPythonJoinedStringItem',
	#classTraits : 'FASTPythonJoinedStringItem classTrait',
	#instVars : [
		'#value => FMProperty'
	],
	#category : #'PharoToPython-Entities'
}

{ #category : #meta }
FASTPythonString class >> annotation [

	<FMClass: #String super: #FASTPythonLiteral>
	<package: #PharoToPython>
	<generated>
	^self
]

{ #category : #accessing }
FASTPythonString >> value [

	<FMProperty: #value type: #String>
	<generated>
	^ value
]

{ #category : #accessing }
FASTPythonString >> value: anObject [
	<generated>
	value := anObject
]
