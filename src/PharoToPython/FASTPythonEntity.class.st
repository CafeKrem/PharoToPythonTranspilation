Class {
	#name : #FASTPythonEntity,
	#superclass : #MooseEntity,
	#category : #'PharoToPython-Entities'
}

{ #category : #meta }
FASTPythonEntity class >> annotation [

	<FMClass: #Entity super: #MooseEntity>
	<package: #PharoToPython>
	<generated>
	^self
]

{ #category : #meta }
FASTPythonEntity class >> metamodel [

	<generated>
	^ FASTPythonModel metamodel
]
