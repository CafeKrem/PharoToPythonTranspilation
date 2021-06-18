Class {
	#name : #FASTPythonVarRef,
	#superclass : #FASTExpression,
	#traits : 'FASTPythonAssignedTarget',
	#classTraits : 'FASTPythonAssignedTarget classTrait',
	#instVars : [
		'#name => FMProperty',
		'#exceptionAssociation => FMOne type: #FASTPythonExceptionAssociation opposite: #allias',
		'#global => FMOne type: #FASTPythonGlobal opposite: #varRef',
		'#nonLocal => FMOne type: #FASTPythonNonLocal opposite: #varRef',
		'#classDeclaration => FMOne type: #FASTPythonClassDeclaration opposite: #superClasses'
	],
	#category : #'FASTPython-Entities'
}

{ #category : #meta }
FASTPythonVarRef class >> annotation [

	<FMClass: #VarRef super: #FASTExpression>
	<package: #FASTPython>
	<generated>
	^self
]

{ #category : #accessing }
FASTPythonVarRef >> classDeclaration [
	"Relation named: #classDeclaration type: #FASTPythonClassDeclaration opposite: #superClasses"

	<generated>
	^ classDeclaration
]

{ #category : #accessing }
FASTPythonVarRef >> classDeclaration: anObject [

	<generated>
	classDeclaration := anObject
]

{ #category : #accessing }
FASTPythonVarRef >> exceptionAssociation [
	"Relation named: #exceptionAssociation type: #FASTPythonExceptionAssociation opposite: #allias"

	<generated>
	<derived>
	^ exceptionAssociation
]

{ #category : #accessing }
FASTPythonVarRef >> exceptionAssociation: anObject [

	<generated>
	exceptionAssociation := anObject
]

{ #category : #accessing }
FASTPythonVarRef >> global [
	"Relation named: #global type: #FASTPythonGlobal opposite: #varRef"

	<generated>
	<container>
	<derived>
	^ global
]

{ #category : #accessing }
FASTPythonVarRef >> global: anObject [

	<generated>
	global := anObject
]

{ #category : #navigation }
FASTPythonVarRef >> globalGroup [
	<generated>
	<navigation: 'Global'>
	^ MooseSpecializedGroup with: self global
]

{ #category : #accessing }
FASTPythonVarRef >> name [

	<FMProperty: #name type: #String>
	<generated>
	^ name
]

{ #category : #accessing }
FASTPythonVarRef >> name: anObject [
	<generated>
	name := anObject
]

{ #category : #accessing }
FASTPythonVarRef >> nonLocal [
	"Relation named: #nonLocal type: #FASTPythonNonLocal opposite: #varRef"

	<generated>
	<container>
	<derived>
	^ nonLocal
]

{ #category : #accessing }
FASTPythonVarRef >> nonLocal: anObject [

	<generated>
	nonLocal := anObject
]

{ #category : #navigation }
FASTPythonVarRef >> nonLocalGroup [
	<generated>
	<navigation: 'NonLocal'>
	^ MooseSpecializedGroup with: self nonLocal
]
