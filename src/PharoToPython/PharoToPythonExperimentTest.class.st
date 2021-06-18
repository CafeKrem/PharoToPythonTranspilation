"
A PharoToPythonExperimentTest is a test class for testing the behavior of PharoToPythonExperiment
"
Class {
	#name : #PharoToPythonExperimentTest,
	#superclass : #TestCase,
	#category : #PharoToPython
}

{ #category : #util }
PharoToPythonExperimentTest >> importFASTPharo: aString [
	^ FASTSmalltalkImporterVisitor new
		runWithSource: (self class >> aString) sourceCode
]

{ #category : #accessing }
PharoToPythonExperimentTest >> method1 [ 
	^ 10
]

{ #category : #tests }
PharoToPythonExperimentTest >> testTranslateMethod [
	| model pythonModel |
	model := self importFASTPharo: #method1.
	pythonModel := PharoToPythonExperiment transformToPython: model.
	self assert: pythonModel name equals: #method1.
	self assertCollection: (pythonModel body collect: [:each | each expression value]) hasSameElements:{ 10 }.
	self assert: pythonModel parameters isEmpty 
]
