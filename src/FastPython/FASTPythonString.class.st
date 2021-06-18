Class {
	#name : #FASTPythonString,
	#superclass : #FASTPythonLiteral,
	#traits : 'FASTPythonJoinedStringItem',
	#classTraits : 'FASTPythonJoinedStringItem classTrait',
	#instVars : [
		'#value => FMProperty'
	],
	#category : #'FASTPython-Entities'
}

{ #category : #meta }
FASTPythonString class >> annotation [

	<FMClass: #String super: #FASTPythonLiteral>
	<package: #FASTPython>
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
