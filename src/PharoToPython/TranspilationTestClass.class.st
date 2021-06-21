Class {
	#name : #TranspilationTestClass,
	#superclass : #Object,
	#category : #PharoToPython
}

{ #category : #examples }
TranspilationTestClass >> a [
	^ 42
]

{ #category : #examples }
TranspilationTestClass >> b [
	| a b |
	a := 15.
	b := 49.
	^ a + b - 15
]
