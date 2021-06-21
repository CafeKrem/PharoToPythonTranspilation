Class {
	#name : #FASTPythonOperationSymbol,
	#superclass : #FASTPythonEntity,
	#instVars : [
		'#op => FMProperty'
	],
	#category : #'PharoToPython-Entities'
}

{ #category : #meta }
FASTPythonOperationSymbol class >> annotation [

	<FMClass: #OperationSymbol super: #FASTPythonEntity>
	<package: #PharoToPython>
	<generated>
	^self
]

{ #category : #accessing }
FASTPythonOperationSymbol >> op [

	<FMProperty: #op type: #String>
	<generated>
	^ op
]

{ #category : #accessing }
FASTPythonOperationSymbol >> op: anObject [
	<generated>
	op := anObject
]
