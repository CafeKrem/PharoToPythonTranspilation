Trait {
	#name : #FASTPythonAssignedTarget,
	#instVars : [
		'#parentAssign => FMOne type: #FASTPythonAssign opposite: #left',
		'#assignExpression => FMOne type: #FASTPythonAssignExpression opposite: #left',
		'#for => FMOne type: #FASTPythonFor opposite: #iterationVar'
	],
	#category : #'PharoToPython-Traits'
}

{ #category : #meta }
FASTPythonAssignedTarget classSide >> annotation [

	<FMClass: #AssignedTarget super: #Object>
	<package: #PharoToPython>
	<generated>
	^self
]

{ #category : #accessing }
FASTPythonAssignedTarget >> assignExpression [
	"Relation named: #assignExpression type: #FASTPythonAssignExpression opposite: #left"

	<generated>
	<container>
	<derived>
	^ assignExpression
]

{ #category : #accessing }
FASTPythonAssignedTarget >> assignExpression: anObject [

	<generated>
	assignExpression := anObject
]

{ #category : #navigation }
FASTPythonAssignedTarget >> assignExpressionGroup [
	<generated>
	<navigation: 'AssignExpression'>
	^ MooseSpecializedGroup with: self assignExpression
]

{ #category : #accessing }
FASTPythonAssignedTarget >> for [
	"Relation named: #for type: #FASTPythonFor opposite: #iterationVar"

	<generated>
	<container>
	<derived>
	^ for
]

{ #category : #accessing }
FASTPythonAssignedTarget >> for: anObject [

	<generated>
	for := anObject
]

{ #category : #navigation }
FASTPythonAssignedTarget >> forGroup [
	<generated>
	<navigation: 'For'>
	^ MooseSpecializedGroup with: self for
]

{ #category : #accessing }
FASTPythonAssignedTarget >> parentAssign [
	"Relation named: #parentAssign type: #FASTPythonAssign opposite: #left"

	<generated>
	<container>
	^ parentAssign
]

{ #category : #accessing }
FASTPythonAssignedTarget >> parentAssign: anObject [

	<generated>
	parentAssign := anObject
]

{ #category : #navigation }
FASTPythonAssignedTarget >> parentAssignGroup [
	<generated>
	<navigation: 'ParentAssign'>
	^ MooseSpecializedGroup with: self parentAssign
]
