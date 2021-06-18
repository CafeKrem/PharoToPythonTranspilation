Class {
	#name : #BaselineOfPharoToPythonTranspilation,
	#superclass : #BaselineOf,
	#category : #BaselineOfPharoToPythonTranspilation
}

{ #category : #baselines }
BaselineOfPharoToPythonTranspilation >> baseline: spec [
	<baseline>
	spec
		for: #common
		do: [ spec
				baseline: 'FASTPharo'
				with: [ spec repository: 'github:///moosetechnology/FAST-Pharo:master/src' ] ]
]
