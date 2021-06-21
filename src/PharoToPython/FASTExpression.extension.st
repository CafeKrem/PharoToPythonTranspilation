Extension { #name : #FASTExpression }

{ #category : #'*PharoToPython-accessing' }
FASTExpression >> assert [
	"Relation named: #assert type: #FASTPythonAssert opposite: #conditional"

	<generated>
	<container>
	<derived>
	<FMProperty: #assert type: #FASTPythonAssert opposite: #conditional>
	<package: #'PharoToPython'>
	^ self attributeAt: #assert ifAbsent: [ nil ]
]

{ #category : #'*PharoToPython-accessing' }
FASTExpression >> assert: anObject [

	<generated>
	(self attributeAt: #assert ifAbsentPut: [nil]) == anObject ifTrue: [ ^ anObject ].
	anObject ifNil: [ | otherSide |
		otherSide :=  self assert.
		self attributeAt: #assert put: anObject.
		otherSide conditional: nil ]
	ifNotNil: [ 
		self attributeAt: #assert put: anObject.
		anObject conditional: self ]
]

{ #category : #'*PharoToPython-accessing' }
FASTExpression >> assign [
	"Relation named: #assign type: #FASTPythonAssign opposite: #right"

	<generated>
	<container>
	<derived>
	<FMProperty: #assign type: #FASTPythonAssign opposite: #right>
	<package: #'PharoToPython'>
	^ self attributeAt: #assign ifAbsent: [ nil ]
]

{ #category : #'*PharoToPython-accessing' }
FASTExpression >> assign: anObject [

	<generated>
	(self attributeAt: #assign ifAbsentPut: [nil]) == anObject ifTrue: [ ^ anObject ].
	anObject ifNil: [ | otherSide |
		otherSide :=  self assign.
		self attributeAt: #assign put: anObject.
		otherSide right: nil ]
	ifNotNil: [ 
		self attributeAt: #assign put: anObject.
		anObject right: self ]
]

{ #category : #'*PharoToPython-accessing' }
FASTExpression >> assignExpression [
	"Relation named: #assignExpression type: #FASTPythonAssignExpression opposite: #right"

	<generated>
	<container>
	<derived>
	<FMProperty: #assignExpression type: #FASTPythonAssignExpression opposite: #right>
	<package: #'PharoToPython'>
	^ self attributeAt: #assignExpression ifAbsent: [ nil ]
]

{ #category : #'*PharoToPython-accessing' }
FASTExpression >> assignExpression: anObject [

	<generated>
	(self attributeAt: #assignExpression ifAbsentPut: [nil]) == anObject ifTrue: [ ^ anObject ].
	anObject ifNil: [ | otherSide |
		otherSide :=  self assignExpression.
		self attributeAt: #assignExpression put: anObject.
		otherSide right: nil ]
	ifNotNil: [ 
		self attributeAt: #assignExpression put: anObject.
		anObject right: self ]
]

{ #category : #'*PharoToPython-accessing' }
FASTExpression >> attributeNav [
	"Relation named: #attributeNav type: #FASTPythonAttributeNav opposite: #left"

	<generated>
	<container>
	<derived>
	<FMProperty: #attributeNav type: #FASTPythonAttributeNav opposite: #left>
	<package: #'PharoToPython'>
	^ self attributeAt: #attributeNav ifAbsent: [ nil ]
]

{ #category : #'*PharoToPython-accessing' }
FASTExpression >> attributeNav: anObject [

	<generated>
	(self attributeAt: #attributeNav ifAbsentPut: [nil]) == anObject ifTrue: [ ^ anObject ].
	anObject ifNil: [ | otherSide |
		otherSide :=  self attributeNav.
		self attributeAt: #attributeNav put: anObject.
		otherSide left: nil ]
	ifNotNil: [ 
		self attributeAt: #attributeNav put: anObject.
		anObject left: self ]
]

{ #category : #'*PharoToPython-accessing' }
FASTExpression >> await [
	"Relation named: #await type: #FASTPythonAwait opposite: #expression"

	<generated>
	<container>
	<derived>
	<FMProperty: #await type: #FASTPythonAwait opposite: #expression>
	<package: #'PharoToPython'>
	^ self attributeAt: #await ifAbsent: [ nil ]
]

{ #category : #'*PharoToPython-accessing' }
FASTExpression >> await: anObject [

	<generated>
	(self attributeAt: #await ifAbsentPut: [nil]) == anObject ifTrue: [ ^ anObject ].
	anObject ifNil: [ | otherSide |
		otherSide :=  self await.
		self attributeAt: #await put: anObject.
		otherSide expression: nil ]
	ifNotNil: [ 
		self attributeAt: #await put: anObject.
		anObject expression: self ]
]

{ #category : #'*PharoToPython-accessing' }
FASTExpression >> call [
	"Relation named: #call type: #FASTPythonCall opposite: #left"

	<generated>
	<container>
	<derived>
	<FMProperty: #call type: #FASTPythonCall opposite: #left>
	<package: #'PharoToPython'>
	^ self attributeAt: #call ifAbsent: [ nil ]
]

{ #category : #'*PharoToPython-accessing' }
FASTExpression >> call: anObject [

	<generated>
	(self attributeAt: #call ifAbsentPut: [nil]) == anObject ifTrue: [ ^ anObject ].
	anObject ifNil: [ | otherSide |
		otherSide :=  self call.
		self attributeAt: #call put: anObject.
		otherSide left: nil ]
	ifNotNil: [ 
		self attributeAt: #call put: anObject.
		anObject left: self ]
]

{ #category : #'*PharoToPython-accessing' }
FASTExpression >> comprehensionExpression [
	"Relation named: #comprehensionExpression type: #FASTPythonComprehensionExpression opposite: #elt"

	<generated>
	<container>
	<derived>
	<FMProperty: #comprehensionExpression type: #FASTPythonComprehensionExpression opposite: #elt>
	<package: #'PharoToPython'>
	^ self attributeAt: #comprehensionExpression ifAbsent: [ nil ]
]

{ #category : #'*PharoToPython-accessing' }
FASTExpression >> comprehensionExpression: anObject [

	<generated>
	(self attributeAt: #comprehensionExpression ifAbsentPut: [nil]) == anObject ifTrue: [ ^ anObject ].
	anObject ifNil: [ | otherSide |
		otherSide :=  self comprehensionExpression.
		self attributeAt: #comprehensionExpression put: anObject.
		otherSide elt: nil ]
	ifNotNil: [ 
		self attributeAt: #comprehensionExpression put: anObject.
		anObject elt: self ]
]

{ #category : #'*PharoToPython-accessing' }
FASTExpression >> expressionStatement [
	"Relation named: #expressionStatement type: #FASTPythonExpressionStatement opposite: #expr"

	<generated>
	<container>
	<derived>
	<FMProperty: #expressionStatement type: #FASTPythonExpressionStatement opposite: #expr>
	<package: #'PharoToPython'>
	^ self attributeAt: #expressionStatement ifAbsent: [ nil ]
]

{ #category : #'*PharoToPython-accessing' }
FASTExpression >> expressionStatement: anObject [

	<generated>
	(self attributeAt: #expressionStatement ifAbsentPut: [nil]) == anObject ifTrue: [ ^ anObject ].
	anObject ifNil: [ | otherSide |
		otherSide :=  self expressionStatement.
		self attributeAt: #expressionStatement put: anObject.
		otherSide expr: nil ]
	ifNotNil: [ 
		self attributeAt: #expressionStatement put: anObject.
		anObject expr: self ]
]

{ #category : #'*PharoToPython-accessing' }
FASTExpression >> formattedValue [
	"Relation named: #formattedValue type: #FASTPythonFormattedValue opposite: #expression"

	<generated>
	<container>
	<derived>
	<FMProperty: #formattedValue type: #FASTPythonFormattedValue opposite: #expression>
	<package: #'PharoToPython'>
	^ self attributeAt: #formattedValue ifAbsent: [ nil ]
]

{ #category : #'*PharoToPython-accessing' }
FASTExpression >> formattedValue: anObject [

	<generated>
	(self attributeAt: #formattedValue ifAbsentPut: [nil]) == anObject ifTrue: [ ^ anObject ].
	anObject ifNil: [ | otherSide |
		otherSide :=  self formattedValue.
		self attributeAt: #formattedValue put: anObject.
		otherSide expression: nil ]
	ifNotNil: [ 
		self attributeAt: #formattedValue put: anObject.
		anObject expression: self ]
]

{ #category : #'*PharoToPython-accessing' }
FASTExpression >> functionDeclaration [
	"Relation named: #functionDeclaration type: #FASTPythonFunctionDeclaration opposite: #decorateurs"

	<generated>
	<FMProperty: #functionDeclaration type: #FASTPythonFunctionDeclaration opposite: #decorateurs>
	<package: #'PharoToPython'>
	^ self attributeAt: #functionDeclaration ifAbsent: [ nil ]
]

{ #category : #'*PharoToPython-accessing' }
FASTExpression >> functionDeclaration: anObject [

	<generated>
	self attributeAt: #functionDeclaration put: (FMMultivalueLink on: self update: #decorateurs from: self functionDeclaration to: anObject).
]

{ #category : #'*PharoToPython-accessing' }
FASTExpression >> ifExpression [
	"Relation named: #ifExpression type: #FASTPythonIfExpression opposite: #else"

	<generated>
	<container>
	<derived>
	<FMProperty: #ifExpression type: #FASTPythonIfExpression opposite: #else>
	<package: #'PharoToPython'>
	^ self attributeAt: #ifExpression ifAbsent: [ nil ]
]

{ #category : #'*PharoToPython-accessing' }
FASTExpression >> ifExpression: anObject [

	<generated>
	(self attributeAt: #ifExpression ifAbsentPut: [nil]) == anObject ifTrue: [ ^ anObject ].
	anObject ifNil: [ | otherSide |
		otherSide :=  self ifExpression.
		self attributeAt: #ifExpression put: anObject.
		otherSide else: nil ]
	ifNotNil: [ 
		self attributeAt: #ifExpression put: anObject.
		anObject else: self ]
]

{ #category : #'*PharoToPython-accessing' }
FASTExpression >> ifOwner [
	"Relation named: #ifOwner type: #FASTPythonIf opposite: #cond"

	<generated>
	<container>
	<derived>
	<FMProperty: #ifOwner type: #FASTPythonIf opposite: #cond>
	<package: #'PharoToPython'>
	^ self attributeAt: #ifOwner ifAbsent: [ nil ]
]

{ #category : #'*PharoToPython-accessing' }
FASTExpression >> ifOwner: anObject [

	<generated>
	(self attributeAt: #ifOwner ifAbsentPut: [nil]) == anObject ifTrue: [ ^ anObject ].
	anObject ifNil: [ | otherSide |
		otherSide :=  self ifOwner.
		self attributeAt: #ifOwner put: anObject.
		otherSide cond: nil ]
	ifNotNil: [ 
		self attributeAt: #ifOwner put: anObject.
		anObject cond: self ]
]

{ #category : #'*PharoToPython-accessing' }
FASTExpression >> itemDict [
	"Relation named: #itemDict type: #FASTPythonItemDict opposite: #key"

	<generated>
	<container>
	<derived>
	<FMProperty: #itemDict type: #FASTPythonItemDict opposite: #key>
	<package: #'PharoToPython'>
	^ self attributeAt: #itemDict ifAbsent: [ nil ]
]

{ #category : #'*PharoToPython-accessing' }
FASTExpression >> itemDict: anObject [

	<generated>
	(self attributeAt: #itemDict ifAbsentPut: [nil]) == anObject ifTrue: [ ^ anObject ].
	anObject ifNil: [ | otherSide |
		otherSide :=  self itemDict.
		self attributeAt: #itemDict put: anObject.
		otherSide key: nil ]
	ifNotNil: [ 
		self attributeAt: #itemDict put: anObject.
		anObject key: self ]
]

{ #category : #'*PharoToPython-accessing' }
FASTExpression >> lambda [
	"Relation named: #lambda type: #FASTPythonLambda opposite: #body"

	<generated>
	<container>
	<derived>
	<FMProperty: #lambda type: #FASTPythonLambda opposite: #body>
	<package: #'PharoToPython'>
	^ self attributeAt: #lambda ifAbsent: [ nil ]
]

{ #category : #'*PharoToPython-accessing' }
FASTExpression >> lambda: anObject [

	<generated>
	(self attributeAt: #lambda ifAbsentPut: [nil]) == anObject ifTrue: [ ^ anObject ].
	anObject ifNil: [ | otherSide |
		otherSide :=  self lambda.
		self attributeAt: #lambda put: anObject.
		otherSide body: nil ]
	ifNotNil: [ 
		self attributeAt: #lambda put: anObject.
		anObject body: self ]
]

{ #category : #'*PharoToPython-accessing' }
FASTExpression >> list [
	"Relation named: #list type: #FASTPythonList opposite: #contents"

	<generated>
	<container>
	<FMProperty: #list type: #FASTPythonList opposite: #contents>
	<package: #'PharoToPython'>
	^ self attributeAt: #list ifAbsent: [ nil ]
]

{ #category : #'*PharoToPython-accessing' }
FASTExpression >> list: anObject [

	<generated>
	self attributeAt: #list put: (FMMultivalueLink on: self update: #contents from: self list to: anObject).
]

{ #category : #'*PharoToPython-accessing' }
FASTExpression >> parentBinOpLeft [
	"Relation named: #parentBinOpLeft type: #FASTPythonBinOp opposite: #left"

	<generated>
	<container>
	<derived>
	<FMProperty: #parentBinOpLeft type: #FASTPythonBinOp opposite: #left>
	<package: #'PharoToPython'>
	^ self attributeAt: #parentBinOpLeft ifAbsent: [ nil ]
]

{ #category : #'*PharoToPython-accessing' }
FASTExpression >> parentBinOpLeft: anObject [

	<generated>
	(self attributeAt: #parentBinOpLeft ifAbsentPut: [nil]) == anObject ifTrue: [ ^ anObject ].
	anObject ifNil: [ | otherSide |
		otherSide :=  self parentBinOpLeft.
		self attributeAt: #parentBinOpLeft put: anObject.
		otherSide left: nil ]
	ifNotNil: [ 
		self attributeAt: #parentBinOpLeft put: anObject.
		anObject left: self ]
]

{ #category : #'*PharoToPython-accessing' }
FASTExpression >> parentBinOpRight [
	"Relation named: #parentBinOpRight type: #FASTPythonBinOp opposite: #right"

	<generated>
	<container>
	<derived>
	<FMProperty: #parentBinOpRight type: #FASTPythonBinOp opposite: #right>
	<package: #'PharoToPython'>
	^ self attributeAt: #parentBinOpRight ifAbsent: [ nil ]
]

{ #category : #'*PharoToPython-accessing' }
FASTExpression >> parentBinOpRight: anObject [

	<generated>
	(self attributeAt: #parentBinOpRight ifAbsentPut: [nil]) == anObject ifTrue: [ ^ anObject ].
	anObject ifNil: [ | otherSide |
		otherSide :=  self parentBinOpRight.
		self attributeAt: #parentBinOpRight put: anObject.
		otherSide right: nil ]
	ifNotNil: [ 
		self attributeAt: #parentBinOpRight put: anObject.
		anObject right: self ]
]

{ #category : #'*PharoToPython-accessing' }
FASTExpression >> parentComprehensionIterable [
	"Relation named: #parentComprehensionIterable type: #FASTPythonComprehension opposite: #iterable"

	<generated>
	<container>
	<derived>
	<FMProperty: #parentComprehensionIterable type: #FASTPythonComprehension opposite: #iterable>
	<package: #'PharoToPython'>
	^ self attributeAt: #parentComprehensionIterable ifAbsent: [ nil ]
]

{ #category : #'*PharoToPython-accessing' }
FASTExpression >> parentComprehensionIterable: anObject [

	<generated>
	(self attributeAt: #parentComprehensionIterable ifAbsentPut: [nil]) == anObject ifTrue: [ ^ anObject ].
	anObject ifNil: [ | otherSide |
		otherSide :=  self parentComprehensionIterable.
		self attributeAt: #parentComprehensionIterable put: anObject.
		otherSide iterable: nil ]
	ifNotNil: [ 
		self attributeAt: #parentComprehensionIterable put: anObject.
		anObject iterable: self ]
]

{ #category : #'*PharoToPython-accessing' }
FASTExpression >> parentForIterable [
	"Relation named: #parentForIterable type: #FASTPythonFor opposite: #iterable"

	<generated>
	<container>
	<FMProperty: #parentForIterable type: #FASTPythonFor opposite: #iterable>
	<package: #'PharoToPython'>
	^ self attributeAt: #parentForIterable ifAbsent: [ nil ]
]

{ #category : #'*PharoToPython-accessing' }
FASTExpression >> parentForIterable: anObject [

	<generated>
	(self attributeAt: #parentForIterable ifAbsentPut: [nil]) == anObject ifTrue: [ ^ anObject ].
	anObject ifNil: [ | otherSide |
		otherSide :=  self parentForIterable.
		self attributeAt: #parentForIterable put: anObject.
		otherSide iterable: nil ]
	ifNotNil: [ 
		self attributeAt: #parentForIterable put: anObject.
		anObject iterable: self ]
]

{ #category : #'*PharoToPython-accessing' }
FASTExpression >> parentIfs [
	"Relation named: #parentIfs type: #FASTPythonComprehension opposite: #ifs"

	<generated>
	<container>
	<FMProperty: #parentIfs type: #FASTPythonComprehension opposite: #ifs>
	<package: #'PharoToPython'>
	^ self attributeAt: #parentIfs ifAbsent: [ nil ]
]

{ #category : #'*PharoToPython-accessing' }
FASTExpression >> parentIfs: anObject [

	<generated>
	self attributeAt: #parentIfs put: (FMMultivalueLink on: self update: #ifs from: self parentIfs to: anObject).
]

{ #category : #'*PharoToPython-accessing' }
FASTExpression >> parentTarget [
	"Relation named: #parentTarget type: #FASTPythonComprehension opposite: #target"

	<generated>
	<container>
	<derived>
	<FMProperty: #parentTarget type: #FASTPythonComprehension opposite: #target>
	<package: #'PharoToPython'>
	^ self attributeAt: #parentTarget ifAbsent: [ nil ]
]

{ #category : #'*PharoToPython-accessing' }
FASTExpression >> parentTarget: anObject [

	<generated>
	(self attributeAt: #parentTarget ifAbsentPut: [nil]) == anObject ifTrue: [ ^ anObject ].
	anObject ifNil: [ | otherSide |
		otherSide :=  self parentTarget.
		self attributeAt: #parentTarget put: anObject.
		otherSide target: nil ]
	ifNotNil: [ 
		self attributeAt: #parentTarget put: anObject.
		anObject target: self ]
]

{ #category : #'*PharoToPython-accessing' }
FASTExpression >> return [
	"Relation named: #return type: #FASTPythonReturn opposite: #returnValue"

	<generated>
	<container>
	<derived>
	<FMProperty: #return type: #FASTPythonReturn opposite: #returnValue>
	<package: #'PharoToPython'>
	^ self attributeAt: #return ifAbsent: [ nil ]
]

{ #category : #'*PharoToPython-accessing' }
FASTExpression >> return: anObject [

	<generated>
	(self attributeAt: #return ifAbsentPut: [nil]) == anObject ifTrue: [ ^ anObject ].
	anObject ifNil: [ | otherSide |
		otherSide :=  self return.
		self attributeAt: #return put: anObject.
		otherSide returnValue: nil ]
	ifNotNil: [ 
		self attributeAt: #return put: anObject.
		anObject returnValue: self ]
]

{ #category : #'*PharoToPython-accessing' }
FASTExpression >> set [
	"Relation named: #set type: #FASTPythonSet opposite: #contents"

	<generated>
	<container>
	<FMProperty: #set type: #FASTPythonSet opposite: #contents>
	<package: #'PharoToPython'>
	^ self attributeAt: #set ifAbsent: [ nil ]
]

{ #category : #'*PharoToPython-accessing' }
FASTExpression >> set: anObject [

	<generated>
	self attributeAt: #set put: (FMMultivalueLink on: self update: #contents from: self set to: anObject).
]

{ #category : #'*PharoToPython-accessing' }
FASTExpression >> slice [
	"Relation named: #slice type: #FASTPythonSlice opposite: #lower"

	<generated>
	<container>
	<derived>
	<FMProperty: #slice type: #FASTPythonSlice opposite: #lower>
	<package: #'PharoToPython'>
	^ self attributeAt: #slice ifAbsent: [ nil ]
]

{ #category : #'*PharoToPython-accessing' }
FASTExpression >> slice: anObject [

	<generated>
	(self attributeAt: #slice ifAbsentPut: [nil]) == anObject ifTrue: [ ^ anObject ].
	anObject ifNil: [ | otherSide |
		otherSide :=  self slice.
		self attributeAt: #slice put: anObject.
		otherSide lower: nil ]
	ifNotNil: [ 
		self attributeAt: #slice put: anObject.
		anObject lower: self ]
]

{ #category : #'*PharoToPython-accessing' }
FASTExpression >> starred [
	"Relation named: #starred type: #FASTPythonStarred opposite: #expr"

	<generated>
	<container>
	<derived>
	<FMProperty: #starred type: #FASTPythonStarred opposite: #expr>
	<package: #'PharoToPython'>
	^ self attributeAt: #starred ifAbsent: [ nil ]
]

{ #category : #'*PharoToPython-accessing' }
FASTExpression >> starred: anObject [

	<generated>
	(self attributeAt: #starred ifAbsentPut: [nil]) == anObject ifTrue: [ ^ anObject ].
	anObject ifNil: [ | otherSide |
		otherSide :=  self starred.
		self attributeAt: #starred put: anObject.
		otherSide expr: nil ]
	ifNotNil: [ 
		self attributeAt: #starred put: anObject.
		anObject expr: self ]
]

{ #category : #'*PharoToPython-accessing' }
FASTExpression >> subscript [
	"Relation named: #subscript type: #FASTPythonSubscript opposite: #value"

	<generated>
	<container>
	<derived>
	<FMProperty: #subscript type: #FASTPythonSubscript opposite: #value>
	<package: #'PharoToPython'>
	^ self attributeAt: #subscript ifAbsent: [ nil ]
]

{ #category : #'*PharoToPython-accessing' }
FASTExpression >> subscript: anObject [

	<generated>
	(self attributeAt: #subscript ifAbsentPut: [nil]) == anObject ifTrue: [ ^ anObject ].
	anObject ifNil: [ | otherSide |
		otherSide :=  self subscript.
		self attributeAt: #subscript put: anObject.
		otherSide value: nil ]
	ifNotNil: [ 
		self attributeAt: #subscript put: anObject.
		anObject value: self ]
]

{ #category : #'*PharoToPython-accessing' }
FASTExpression >> tuple [
	"Relation named: #tuple type: #FASTPythonTuple opposite: #contents"

	<generated>
	<container>
	<FMProperty: #tuple type: #FASTPythonTuple opposite: #contents>
	<package: #'PharoToPython'>
	^ self attributeAt: #tuple ifAbsent: [ nil ]
]

{ #category : #'*PharoToPython-accessing' }
FASTExpression >> tuple: anObject [

	<generated>
	self attributeAt: #tuple put: (FMMultivalueLink on: self update: #contents from: self tuple to: anObject).
]

{ #category : #'*PharoToPython-accessing' }
FASTExpression >> unOp [
	"Relation named: #unOp type: #FASTPythonUnOp opposite: #expr"

	<generated>
	<container>
	<derived>
	<FMProperty: #unOp type: #FASTPythonUnOp opposite: #expr>
	<package: #'PharoToPython'>
	^ self attributeAt: #unOp ifAbsent: [ nil ]
]

{ #category : #'*PharoToPython-accessing' }
FASTExpression >> unOp: anObject [

	<generated>
	(self attributeAt: #unOp ifAbsentPut: [nil]) == anObject ifTrue: [ ^ anObject ].
	anObject ifNil: [ | otherSide |
		otherSide :=  self unOp.
		self attributeAt: #unOp put: anObject.
		otherSide expr: nil ]
	ifNotNil: [ 
		self attributeAt: #unOp put: anObject.
		anObject expr: self ]
]

{ #category : #'*PharoToPython-accessing' }
FASTExpression >> while [
	"Relation named: #while type: #FASTPythonWhile opposite: #cond"

	<generated>
	<container>
	<derived>
	<FMProperty: #while type: #FASTPythonWhile opposite: #cond>
	<package: #'PharoToPython'>
	^ self attributeAt: #while ifAbsent: [ nil ]
]

{ #category : #'*PharoToPython-accessing' }
FASTExpression >> while: anObject [

	<generated>
	(self attributeAt: #while ifAbsentPut: [nil]) == anObject ifTrue: [ ^ anObject ].
	anObject ifNil: [ | otherSide |
		otherSide :=  self while.
		self attributeAt: #while put: anObject.
		otherSide cond: nil ]
	ifNotNil: [ 
		self attributeAt: #while put: anObject.
		anObject cond: self ]
]

{ #category : #'*PharoToPython-accessing' }
FASTExpression >> withItem [
	"Relation named: #withItem type: #FASTPythonWithItem opposite: #contextExpression"

	<generated>
	<container>
	<derived>
	<FMProperty: #withItem type: #FASTPythonWithItem opposite: #contextExpression>
	<package: #'PharoToPython'>
	^ self attributeAt: #withItem ifAbsent: [ nil ]
]

{ #category : #'*PharoToPython-accessing' }
FASTExpression >> withItem: anObject [

	<generated>
	(self attributeAt: #withItem ifAbsentPut: [nil]) == anObject ifTrue: [ ^ anObject ].
	anObject ifNil: [ | otherSide |
		otherSide :=  self withItem.
		self attributeAt: #withItem put: anObject.
		otherSide contextExpression: nil ]
	ifNotNil: [ 
		self attributeAt: #withItem put: anObject.
		anObject contextExpression: self ]
]

{ #category : #'*PharoToPython-accessing' }
FASTExpression >> yield [
	"Relation named: #yield type: #FASTPythonYield opposite: #expression"

	<generated>
	<container>
	<derived>
	<FMProperty: #yield type: #FASTPythonYield opposite: #expression>
	<package: #'PharoToPython'>
	^ self attributeAt: #yield ifAbsent: [ nil ]
]

{ #category : #'*PharoToPython-accessing' }
FASTExpression >> yield: anObject [

	<generated>
	(self attributeAt: #yield ifAbsentPut: [nil]) == anObject ifTrue: [ ^ anObject ].
	anObject ifNil: [ | otherSide |
		otherSide :=  self yield.
		self attributeAt: #yield put: anObject.
		otherSide expression: nil ]
	ifNotNil: [ 
		self attributeAt: #yield put: anObject.
		anObject expression: self ]
]

{ #category : #'*PharoToPython-accessing' }
FASTExpression >> yieldFrom [
	"Relation named: #yieldFrom type: #FASTPythonYieldFrom opposite: #expression"

	<generated>
	<container>
	<derived>
	<FMProperty: #yieldFrom type: #FASTPythonYieldFrom opposite: #expression>
	<package: #'PharoToPython'>
	^ self attributeAt: #yieldFrom ifAbsent: [ nil ]
]

{ #category : #'*PharoToPython-accessing' }
FASTExpression >> yieldFrom: anObject [

	<generated>
	(self attributeAt: #yieldFrom ifAbsentPut: [nil]) == anObject ifTrue: [ ^ anObject ].
	anObject ifNil: [ | otherSide |
		otherSide :=  self yieldFrom.
		self attributeAt: #yieldFrom put: anObject.
		otherSide expression: nil ]
	ifNotNil: [ 
		self attributeAt: #yieldFrom put: anObject.
		anObject expression: self ]
]
