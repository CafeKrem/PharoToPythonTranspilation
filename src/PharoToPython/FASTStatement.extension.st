Extension { #name : #FASTStatement }

{ #category : #'*PharoToPython-accessing' }
FASTStatement >> classDeclaration [
	"Relation named: #classDeclaration type: #FASTPythonClassDeclaration opposite: #body"

	<generated>
	<container>
	<FMProperty: #classDeclaration type: #FASTPythonClassDeclaration opposite: #body>
	<package: #'PharoToPython'>
	^ self attributeAt: #classDeclaration ifAbsent: [ nil ]
]

{ #category : #'*PharoToPython-accessing' }
FASTStatement >> classDeclaration: anObject [

	<generated>
	self attributeAt: #classDeclaration put: (FMMultivalueLink on: self update: #body from: self classDeclaration to: anObject).
]

{ #category : #'*PharoToPython-accessing' }
FASTStatement >> exceptionHandler [
	"Relation named: #exceptionHandler type: #FASTPythonExceptionHandler opposite: #exceptionActions"

	<generated>
	<container>
	<FMProperty: #exceptionHandler type: #FASTPythonExceptionHandler opposite: #exceptionActions>
	<package: #'PharoToPython'>
	^ self attributeAt: #exceptionHandler ifAbsent: [ nil ]
]

{ #category : #'*PharoToPython-accessing' }
FASTStatement >> exceptionHandler: anObject [

	<generated>
	self attributeAt: #exceptionHandler put: (FMMultivalueLink on: self update: #exceptionActions from: self exceptionHandler to: anObject).
]

{ #category : #'*PharoToPython-accessing' }
FASTStatement >> functionDeclaration [
	"Relation named: #functionDeclaration type: #FASTPythonFunctionDeclaration opposite: #body"

	<generated>
	<container>
	<FMProperty: #functionDeclaration type: #FASTPythonFunctionDeclaration opposite: #body>
	<package: #'PharoToPython'>
	^ self attributeAt: #functionDeclaration ifAbsent: [ nil ]
]

{ #category : #'*PharoToPython-accessing' }
FASTStatement >> functionDeclaration: anObject [

	<generated>
	self attributeAt: #functionDeclaration put: (FMMultivalueLink on: self update: #body from: self functionDeclaration to: anObject).
]

{ #category : #'*PharoToPython-accessing' }
FASTStatement >> parentElse [
	"Relation named: #parentElse type: #FASTPythonIf opposite: #else"

	<generated>
	<container>
	<FMProperty: #parentElse type: #FASTPythonIf opposite: #else>
	<package: #'PharoToPython'>
	^ self attributeAt: #parentElse ifAbsent: [ nil ]
]

{ #category : #'*PharoToPython-accessing' }
FASTStatement >> parentElse: anObject [

	<generated>
	self attributeAt: #parentElse put: (FMMultivalueLink on: self update: #else from: self parentElse to: anObject).
]

{ #category : #'*PharoToPython-accessing' }
FASTStatement >> parentForBody [
	"Relation named: #parentForBody type: #FASTPythonFor opposite: #body"

	<generated>
	<container>
	<FMProperty: #parentForBody type: #FASTPythonFor opposite: #body>
	<package: #'PharoToPython'>
	^ self attributeAt: #parentForBody ifAbsent: [ nil ]
]

{ #category : #'*PharoToPython-accessing' }
FASTStatement >> parentForBody: anObject [

	<generated>
	self attributeAt: #parentForBody put: (FMMultivalueLink on: self update: #body from: self parentForBody to: anObject).
]

{ #category : #'*PharoToPython-accessing' }
FASTStatement >> parentIfBody [
	"Relation named: #parentIfBody type: #FASTPythonIf opposite: #body"

	<generated>
	<container>
	<FMProperty: #parentIfBody type: #FASTPythonIf opposite: #body>
	<package: #'PharoToPython'>
	^ self attributeAt: #parentIfBody ifAbsent: [ nil ]
]

{ #category : #'*PharoToPython-accessing' }
FASTStatement >> parentIfBody: anObject [

	<generated>
	self attributeAt: #parentIfBody put: (FMMultivalueLink on: self update: #body from: self parentIfBody to: anObject).
]

{ #category : #'*PharoToPython-accessing' }
FASTStatement >> parentOrelse [
	"Relation named: #parentOrelse type: #FASTPythonFor opposite: #orelse"

	<generated>
	<container>
	<FMProperty: #parentOrelse type: #FASTPythonFor opposite: #orelse>
	<package: #'PharoToPython'>
	^ self attributeAt: #parentOrelse ifAbsent: [ nil ]
]

{ #category : #'*PharoToPython-accessing' }
FASTStatement >> parentOrelse: anObject [

	<generated>
	self attributeAt: #parentOrelse put: (FMMultivalueLink on: self update: #orelse from: self parentOrelse to: anObject).
]

{ #category : #'*PharoToPython-accessing' }
FASTStatement >> rootNode [
	"Relation named: #rootNode type: #FASTPythonRootNode opposite: #statements"

	<generated>
	<container>
	<FMProperty: #rootNode type: #FASTPythonRootNode opposite: #statements>
	<package: #'PharoToPython'>
	^ self attributeAt: #rootNode ifAbsent: [ nil ]
]

{ #category : #'*PharoToPython-accessing' }
FASTStatement >> rootNode: anObject [

	<generated>
	self attributeAt: #rootNode put: (FMMultivalueLink on: self update: #statements from: self rootNode to: anObject).
]

{ #category : #'*PharoToPython-accessing' }
FASTStatement >> try [
	"Relation named: #try type: #FASTPythonTry opposite: #body"

	<generated>
	<container>
	<FMProperty: #try type: #FASTPythonTry opposite: #body>
	<package: #'PharoToPython'>
	^ self attributeAt: #try ifAbsent: [ nil ]
]

{ #category : #'*PharoToPython-accessing' }
FASTStatement >> try: anObject [

	<generated>
	self attributeAt: #try put: (FMMultivalueLink on: self update: #body from: self try to: anObject).
]

{ #category : #'*PharoToPython-accessing' }
FASTStatement >> while [
	"Relation named: #while type: #FASTPythonWhile opposite: #body"

	<generated>
	<container>
	<FMProperty: #while type: #FASTPythonWhile opposite: #body>
	<package: #'PharoToPython'>
	^ self attributeAt: #while ifAbsent: [ nil ]
]

{ #category : #'*PharoToPython-accessing' }
FASTStatement >> while: anObject [

	<generated>
	self attributeAt: #while put: (FMMultivalueLink on: self update: #body from: self while to: anObject).
]
