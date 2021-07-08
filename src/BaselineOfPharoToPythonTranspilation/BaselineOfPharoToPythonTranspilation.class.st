Class {
	#name : #BaselineOfPharoToPythonTranspilation,
	#superclass : #BaselineOf,
	#category : #BaselineOfPharoToPythonTranspilation
}

{ #category : #baselines }
BaselineOfPharoToPythonTranspilation >> baseline: spec [

	<baseline>
	spec for: #common do: [ 
		spec package: 'PharoToPython'.
		spec
			baseline: 'PTL'
			with: [ spec repository: 'github:///cafekrem/PTL:main/src' ].
		spec
			baseline: 'FASTPharo'
			with: [ 
			spec repository: 'github:///moosetechnology/FAST-Pharo:master/src' ] ]
]
