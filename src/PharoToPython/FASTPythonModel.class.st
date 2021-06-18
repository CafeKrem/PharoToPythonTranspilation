Class {
	#name : #FASTPythonModel,
	#superclass : #MooseModel,
	#category : #'PharoToPython-Model'
}

{ #category : #accessing }
FASTPythonModel class >> allSubmetamodelsPackagesNames [
	<generated>
	^ #(#'Moose-Query' #'Famix-Traits' #'FAST-Core-Model')
]

{ #category : #meta }
FASTPythonModel class >> annotation [
	<FMClass: #FASTPythonModel super: #MooseModel>
	<package: #PharoToPython>
	<generated>
]
