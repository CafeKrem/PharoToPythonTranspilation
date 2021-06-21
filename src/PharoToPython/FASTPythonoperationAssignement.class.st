Class {
	#name : #FASTPythonoperationAssignement,
	#superclass : #FASTPythonAssignExpression,
	#instVars : [
		'#operation => FMProperty'
	],
	#category : #'PharoToPython-Entities'
}

{ #category : #meta }
FASTPythonoperationAssignement class >> annotation [

	<FMClass: #operationAssignement super: #FASTPythonAssignExpression>
	<package: #PharoToPython>
	<generated>
	^self
]

{ #category : #accessing }
FASTPythonoperationAssignement >> operation [

	<FMProperty: #operation type: #String>
	<generated>
	^ operation
]

{ #category : #accessing }
FASTPythonoperationAssignement >> operation: anObject [
	<generated>
	operation := anObject
]
