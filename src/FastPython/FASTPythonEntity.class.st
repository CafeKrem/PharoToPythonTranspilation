Class {
	#name : #FASTPythonEntity,
	#superclass : #MooseEntity,
	#category : #'FASTPython-Entities'
}

{ #category : #meta }
FASTPythonEntity class >> annotation [

	<FMClass: #Entity super: #MooseEntity>
	<package: #FASTPython>
	<generated>
	^self
]

{ #category : #meta }
FASTPythonEntity class >> metamodel [

	<generated>
	^ FASTPythonModel metamodel
]
