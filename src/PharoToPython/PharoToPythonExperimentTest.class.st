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

{ #category : #util }
PharoToPythonExperimentTest >> importFASTPharo: aString withClass: aClass [
	^ FASTSmalltalkImporterVisitor new
		runWithSource: (aClass >> aString) sourceCode
]

{ #category : #accessing }
PharoToPythonExperimentTest >> method1 [ 
	^ 10
]

{ #category : #accessing }
PharoToPythonExperimentTest >> methodIncrement [
	| a |
	a := a + 10 
]

{ #category : #accessing }
PharoToPythonExperimentTest >> methodOperation [
	1 + 2.
	3 - 4.
	5 * 6.
	7 / 8
]

{ #category : #accessing }
PharoToPythonExperimentTest >> methodString [
	^ 'klm'
]

{ #category : #accessing }
PharoToPythonExperimentTest >> methodTemporaryAssignement [
	| a |
	a := 10
]

{ #category : #tests }
PharoToPythonExperimentTest >> testTranslateAnObject [
	| model pythonModel |
	model := TranspilationTestClass.
	pythonModel := PharoToPythonExperiment transformToPythonClass: model.
	self assert: pythonModel packageName equals: #PharoToPython.
	self assert: pythonModel superClasses first name equals: #Object.
	self
		assertCollection: (pythonModel body collect: #name)
		hasSameElements: {#a . #b}
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

{ #category : #tests }
PharoToPythonExperimentTest >> testTranslateMethodComputationOperation [
	| model pythonModel allStatement |
	model := self importFASTPharo: #methodOperation.
	pythonModel := PharoToPythonExperiment transformToPython: model.
	allStatement := pythonModel body
		collect: [ :each | each expression value ].
	self
		assertCollection: (allStatement collect: [ :each | each left value ])
		hasSameElements: {1 . 3 . 5 . 7}.
	self
		assertCollection: (allStatement collect: #op)
		hasSameElements: {#+ . #- . #* . #/}.
	self
		assertCollection: (allStatement collect: [ :each | each right value ])
		hasSameElements: {2 . 4 . 6 . 8}
]

{ #category : #tests }
PharoToPythonExperimentTest >> testTranslateMethodIncrementAssignement [
	| model pythonModel |
	model := self importFASTPharo: #methodIncrement.
	pythonModel := PharoToPythonExperiment transformToPython: model.
	self
		assert: pythonModel body first expression left value name
		equals: 'a'.
	self assert: pythonModel body first expression right value equals: 10.
	self assert: pythonModel body first expression operation equals: #+
]

{ #category : #tests }
PharoToPythonExperimentTest >> testTranslateMethodString [
	| model pythonModel |
	model := self importFASTPharo: #methodString.
	pythonModel := PharoToPythonExperiment transformToPython: model.
	self assert: pythonModel name equals: #methodString.
	self assertCollection: (pythonModel body collect: [:each | each expression value]) hasSameElements:{ 'klm' }.
	self assert: pythonModel parameters isEmpty 
]

{ #category : #tests }
PharoToPythonExperimentTest >> testTranslateMethodTemporaryAssignement [
	| model pythonModel |
	model := self importFASTPharo: #methodTemporaryAssignement.
	pythonModel := PharoToPythonExperiment transformToPython: model.
	self assert: pythonModel body first expression left value name equals: 'a'.
	self assert: pythonModel body first expression right value equals: 10
	
	
]
