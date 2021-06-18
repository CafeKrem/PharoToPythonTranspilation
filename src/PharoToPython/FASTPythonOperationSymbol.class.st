Class {
	#name : #FASTPythonOperationSymbol,
	#superclass : #FASTPythonEntity,
	#instVars : [
		'#binOp => FMMany type: #FASTPythonBinOp opposite: #op',
		'#op => FMProperty',
		'#unOp => FMMany type: #FASTPythonUnOp opposite: #op'
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

{ #category : #adding }
FASTPythonOperationSymbol >> addBinOp: anObject [
	<generated>
	^ self binOp add: anObject
]

{ #category : #adding }
FASTPythonOperationSymbol >> addUnOp: anObject [
	<generated>
	^ self unOp add: anObject
]

{ #category : #accessing }
FASTPythonOperationSymbol >> binOp [
	"Relation named: #binOp type: #FASTPythonBinOp opposite: #op"

	<generated>
	<derived>
	^ binOp
]

{ #category : #accessing }
FASTPythonOperationSymbol >> binOp: anObject [

	<generated>
	binOp value: anObject
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

{ #category : #accessing }
FASTPythonOperationSymbol >> unOp [
	"Relation named: #unOp type: #FASTPythonUnOp opposite: #op"

	<generated>
	<derived>
	^ unOp
]

{ #category : #accessing }
FASTPythonOperationSymbol >> unOp: anObject [

	<generated>
	unOp value: anObject
]
