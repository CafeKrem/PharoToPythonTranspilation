Trait {
	#name : #FASTPythonAsynchronable,
	#instVars : [
		'#isAsync => FMProperty'
	],
	#category : #'PharoToPython-Traits'
}

{ #category : #meta }
FASTPythonAsynchronable classSide >> annotation [

	<FMClass: #Asynchronable super: #Object>
	<package: #PharoToPython>
	<generated>
	^self
]

{ #category : #accessing }
FASTPythonAsynchronable >> isAsync [

	<FMProperty: #isAsync type: #Boolean>
	<generated>
	^ isAsync
]

{ #category : #accessing }
FASTPythonAsynchronable >> isAsync: anObject [
	<generated>
	isAsync := anObject
]
