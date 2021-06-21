Class {
	#name : #FastPythonGenerator,
	#superclass : #FamixMetamodelGenerator,
	#instVars : [
		'statement',
		'operationSymbol',
		'itemDict',
		'assignedTarget',
		'exceptionHandler',
		'exception',
		'declaration',
		'comprehension',
		'withItem',
		'asynchronable',
		'rootNode',
		'subscriptionIndex',
		'joinedStringItem',
		'exceptionAssociation',
		'parameter',
		'assignExpression',
		'return',
		'if',
		'while',
		'assign',
		'pass',
		'expressionStatement',
		'expression',
		'try',
		'raise',
		'assert',
		'varDeclaration',
		'slice',
		'yield',
		'await',
		'yieldFrom',
		'formattedValue',
		'break',
		'continue',
		'global',
		'nonLocal',
		'for',
		'binOp',
		'unOp',
		'ifExpression',
		'sFunction',
		'sClass',
		'literal',
		'lambda',
		'call',
		'with',
		'starred',
		'joinedStr',
		'classDeclaration',
		'functionDeclaration',
		'varRef',
		'attributeNav',
		'integer',
		'collection',
		'boolean',
		'none',
		'subscript',
		'comprehensionExpression',
		'string',
		'list',
		'set',
		'trueLiteral',
		'falseLiteral',
		'dict',
		'comprehensionList',
		'comprehensionDict',
		'comprehensionSet',
		'generatorExp',
		'tuple',
		'fastVarRef',
		'null',
		'scopable',
		'returnFAST',
		'expressionStatementFAST',
		'operationAssignement'
	],
	#category : #PharoToPython
}

{ #category : #accessing }
FastPythonGenerator class >> packageName [
	^ 'PharoToPython'
]

{ #category : #accessing }
FastPythonGenerator class >> prefix [
	^ 'FASTPython'
]

{ #category : #accessing }
FastPythonGenerator class >> submetamodels [ 
 ^ { FASTMetamodelGenerator }
]

{ #category : #definition }
FastPythonGenerator >> defineClasses [
	super defineClasses.
	statement := self remoteEntity: #Statement withPrefix: #FAST.
	expression := self remoteEntity: #Expression withPrefix: #FAST.
	returnFAST := self remoteEntity: #ReturnStatement withPrefix: #FAST.
	expressionStatementFAST := self
		remoteEntity: #ExpressionStatement
		withPrefix: #FAST.
	"sPackage := builder newClassNamed: #SPackage.
  sModule := builder newClassNamed: #SModule."
	operationSymbol := builder newClassNamed: #OperationSymbol.
	itemDict := builder newClassNamed: #ItemDict.
	exceptionHandler := builder newClassNamed: #ExceptionHandler.
	exception := builder newClassNamed: #Exception.
	" scope := builder newClassNamed: #Scope."
	comprehension := builder newClassNamed: #Comprehension.
	withItem := builder newClassNamed: #WithItem.
	rootNode := builder newClassNamed: #RootNode.
	exceptionAssociation := builder newClassNamed: #ExceptionAssociation.
	parameter := builder newClassNamed: #Parameter.
	assignExpression := builder newClassNamed: #AssignExpression.
	return := builder newClassNamed: #Return.
	if := builder newClassNamed: #If.
	while := builder newClassNamed: #While.
	assign := builder newClassNamed: #Assign.
	pass := builder newClassNamed: #Pass.
	expressionStatement := builder newClassNamed: #ExpressionStatement.
	try := builder newClassNamed: #Try.
	raise := builder newClassNamed: #Raise.
	assert := builder newClassNamed: #Assert.
	varDeclaration := builder newClassNamed: #VarDeclaration.
	slice := builder newClassNamed: #Slice.
	yield := builder newClassNamed: #Yield.
	await := builder newClassNamed: #Await.
	yieldFrom := builder newClassNamed: #YieldFrom.
	formattedValue := builder newClassNamed: #FormattedValue.
	break := builder newClassNamed: #Break.
	continue := builder newClassNamed: #Continue.
	global := builder newClassNamed: #Global.
	nonLocal := builder newClassNamed: #NonLocal.
	for := builder newClassNamed: #For.
	binOp := builder newClassNamed: #BinOp.
	unOp := builder newClassNamed: #UnOp.
	ifExpression := builder newClassNamed: #IfExpression.
	"sFunction := builder newClassNamed: #SFunction.
  sClass := builder newClassNamed: #SClass."
	literal := builder newClassNamed: #Literal.
	lambda := builder newClassNamed: #Lambda.
	call := builder newClassNamed: #Call.
	with := builder newClassNamed: #With.
	starred := builder newClassNamed: #Starred.
	joinedStr := builder newClassNamed: #JoinedStr.
	classDeclaration := builder newClassNamed: #ClassDeclaration.
	functionDeclaration := builder newClassNamed: #FunctionDeclaration.
	varRef := builder newClassNamed: #VarRef.
	attributeNav := builder newClassNamed: #AttributeNav.
	integer := builder newClassNamed: #Integer.
	collection := builder newClassNamed: #Collection.
	boolean := builder newClassNamed: #Boolean.
	none := builder newClassNamed: #None.
	subscript := builder newClassNamed: #Subscript.
	comprehensionExpression := builder
		newClassNamed: #ComprehensionExpression.
	string := builder newClassNamed: #String.
	list := builder newClassNamed: #List.
	set := builder newClassNamed: #Set.
	trueLiteral := builder newClassNamed: #TrueLiteral.
	falseLiteral := builder newClassNamed: #FalseLiteral.
	dict := builder newClassNamed: #Dict.
	comprehensionList := builder newClassNamed: #ComprehensionList.
	comprehensionDict := builder newClassNamed: #ComprehensionDict.
	comprehensionSet := builder newClassNamed: #ComprehensionSet.
	generatorExp := builder newClassNamed: #GeneratorExp.
	tuple := builder newClassNamed: #Tuple.
	operationAssignement := builder newClassNamed: #operationAssignement
]

{ #category : #definition }
FastPythonGenerator >> defineHierarchy [
	super defineHierarchy.
	return --|> returnFAST.
	if --|> statement.
	while --|> statement.
	assign --|> statement.
	pass --|> statement.
	expressionStatement --|> expressionStatementFAST.
	expression --|> subscriptionIndex.
	operationAssignement --|> assignExpression.
		try --|> statement.
	raise --|> statement.
	assert --|> statement.
	" varDeclaration --|> declaration."
	slice --|> subscriptionIndex.
	yield --|> statement.
	await --|> statement.
	yieldFrom --|> statement.
	formattedValue --|> joinedStringItem.
	break --|> statement.
	continue --|> statement.
	global --|> statement.
	nonLocal --|> statement.
	for --|> statement.
	for --|> asynchronable.
	binOp --|> expression.
	unOp --|> expression.
	ifExpression --|> expression.
	"sFunction --|> statement.
  sFunction --|> asynchronable.
  sClass --|> statement.
  sClass --|> asynchronable."
	literal --|> expression.
	lambda --|> expression.
	call --|> expression.
	with --|> statement.
	with --|> asynchronable.
	starred --|> expression.
	joinedStr --|> expression.
	classDeclaration --|> statement.
	"classDeclaration --|> declaration."
	functionDeclaration --|> statement.
	" functionDeclaration --|> declaration."
	varRef --|> assignedTarget.
	varRef --|> expression.
	attributeNav --|> assignedTarget.
	attributeNav --|> expression.
	integer --|> literal.
	collection --|> literal.
	boolean --|> literal.
	none --|> literal.
	subscript --|> assignedTarget.
	subscript --|> expression.
	comprehensionExpression --|> literal.
	string --|> literal.
	string --|> joinedStringItem.
	list --|> collection.
	set --|> collection.
	trueLiteral --|> boolean.
	falseLiteral --|> boolean.
	dict --|> collection.
	comprehensionList --|> comprehensionExpression.
	comprehensionDict --|> comprehensionExpression.
	comprehensionSet --|> comprehensionExpression.
	generatorExp --|> comprehensionExpression.
	tuple --|> collection.
	tuple --|> assignedTarget.
	assignExpression --|> expression
]

{ #category : #definition }
FastPythonGenerator >> defineProperties [
	super defineProperties.
	operationSymbol property: #op type: #String.
	binOp property: #op type: #String.
	unOp property: #op type: #String.
	exception property: #name type: #String.
	exception property: #description type: #String.
	operationAssignement property: #operation type: #String. 

	"declaration property: #name type: #String."
	asynchronable property: #isAsync type: #Boolean.
	functionDeclaration property: #name type: #String.
	parameter property: #name type: #String.
	" sFunction property: #name type: #String.
  sFunction property: #isClassSide type: #Boolean.
  sClass property: #name type: #String."
	call property: #callee type: #String.
	varRef property: #name type: #String.
	attributeNav property: #attributeName type: #String.
	integer property: #value type: #Number.
	string property: #value type: #String
]

{ #category : #definition }
FastPythonGenerator >> defineRelations [
	super defineRelations.
	(statement property: #parentIfBody) *-<> (if property: #body).
	(statement property: #parentElse) *-<> (if property: #else).
	(statement property: #parentOrelse) *-<> (for property: #orelse).
	(statement property: #parentForBody) *-<> (for property: #body).
	"(sPackage property: #modules)  <>-* (sModule property: #sPackage).
   (sPackage property: #subPackage)  <>-* (sPackage property: #sPackage).
   (sModule property: #classes)  <>-* (sClass property: #sModule).
   (sModule property: #statements)  <>-* (statement property: #sModule).
   (sModule property: #classImported)  -* (sClass property: #sModule).
   (sModule property: #fuctionImported)  -* (sFunction property: #sModule).
   (sModule property: #scope)  <>- (scope property: #scopeOwner)."
	(itemDict property: #key) <>- (expression property: #itemDict).
	(itemDict property: #value) <>- (expression property: #itemDict).
	(assignedTarget property: #parentAssign) -<> (assign property: #left).
	(exceptionHandler property: #exceptionActions)
		<>-* (statement property: #exceptionHandler).
	(exceptionHandler property: #exceptionAssociations)
		-* (exceptionAssociation property: #exceptionHandler).
	"(scope property: #subScope)  -* (scope property: #parentScope).
   (scope property: #declarations)  <>-* (declaration property: #scopeOwner).
   (scope property: #scopeOwner)  -<> (sFunction property: #scope).
   (scope property: #scopeOwner)  -<> (sClass property: #classScope).
   (scope property: #scopeOwner)  -<> (sClass property: #instanceScope).
   (scope property: #scopeOwner)  -<> (for property: #scope).
   (scope property: #scopeOwner)  -<> (comprehension property: #scope)."
	" (scope property: #scopeOwner)  -<> (with property: #scope)."
	" (declaration property: #references)  -* (varRef property: #definition)."
	(comprehension property: #target)
		<>- (expression property: #parentTarget).
	(comprehension property: #iterable)
		<>- (expression property: #parentComprehensionIterable).
	(comprehension property: #ifs) <>-* (expression property: #parentIfs).
	(withItem property: #contextExpression)
		<>- (expression property: #withItem).
	(withItem property: #target) <>- (expression property: #withItem).
	(rootNode property: #statements) <>-* (statement property: #rootNode).
	(subscriptionIndex property: #parentSubscription)
		-<> (subscript property: #index).
	(exceptionAssociation property: #exception)
		- (exception property: #exceptionAssociation).
	(exceptionAssociation property: #allias)
		- (varRef property: #exceptionAssociation).
	(assignExpression property: #left)
		<>- (assignedTarget property: #assignExpression).
	(assignExpression property: #right)
		<>- (expression property: #assignExpression).
	(return property: #returnValue) <>- (expression property: #return).
	(if property: #elif) *- (if property: #ifParent).
	(if property: #cond) <>- (expression property: #ifOwner).
	(while property: #cond) <>- (expression property: #while).
	(while property: #body) <>-* (statement property: #while).
	(assign property: #right) <>- (expression property: #assign).
	(expressionStatement property: #expr)
		<>- (expression property: #expressionStatement).
	(expression property: #parentForIterable)
		-<> (for property: #iterable).
	(try property: #body) <>-* (statement property: #try).
	(try property: #finaly) <>-* (statement property: #try).
	(try property: #exceptHandlers)
		<>-* (exceptionHandler property: #try).
	(raise property: #exception) - (exception property: #raise).
	(assert property: #conditional) <>- (expression property: #assert).
	(assert property: #message) <>- (expression property: #assert).
	(slice property: #lower) <>- (expression property: #slice).
	(slice property: #upper) <>- (expression property: #slice).
	(slice property: #step) <>- (expression property: #slice).
	(yield property: #expression) <>- (expression property: #yield).
	(await property: #expression) <>- (expression property: #await).
	(yieldFrom property: #expression)
		<>- (expression property: #yieldFrom).
	(formattedValue property: #expression)
		<>- (expression property: #formattedValue).
	(global property: #varRef) <>- (varRef property: #global).
	(nonLocal property: #varRef) <>- (varRef property: #nonLocal).
	(for property: #iterationVar) <>- (assignedTarget property: #for).
	(binOp property: #left) <>- (expression property: #parentBinOpLeft).
	(binOp property: #right) <>- (expression property: #parentBinOpRight).
	(unOp property: #expr) <>- (expression property: #unOp).
	self
		flag:
			'below I decided to use a property than a relation , some error with FAST.'.
	"(binOp property: #op)  *- (operationSymbol property: #binOp).
   (unOp property: #op)  *- (operationSymbol property: #unOp)."
	(ifExpression property: #else)
		<>- (expression property: #ifExpression).
	(ifExpression property: #body)
		<>- (expression property: #ifExpression).
	(ifExpression property: #cond)
		<>- (expression property: #ifExpression).
	"(sFunction property: #statements)  <>-* (statement property: #sFunction).
   (sFunction property: #decorateurs)  <>-* (expression property: #sFunction).
   (sFunction property: #declaration)  - (functionDeclaration property: #sfunction).
   (sClass property: #statements)  <>-* (statement property: #sClass).
   (sClass property: #superClasses)  *-* (sClass property: #subClasses).
   (sClass property: #declaration)  - (classDeclaration property: #sClass)."
	(lambda property: #body) <>- (expression property: #lambda).
	(call property: #left) <>- (expression property: #call).
	(call property: #arguments) <>-* (expression property: #call).
	(with property: #withItems) <>-* (withItem property: #with).
	(starred property: #expr) <>- (expression property: #starred).
	(joinedStr property: #items)
		<>-* (joinedStringItem property: #joinedStr).
	(classDeclaration property: #body)
		<>-* (statement property: #classDeclaration).
	(classDeclaration property: #superClasses)
		-* (varRef property: #classDeclaration).
	"  (classDeclaration property: #sclass)  - (sClass property: #classDeclaration)."
	(functionDeclaration property: #body)
		<>-* (statement property: #functionDeclaration).
	(functionDeclaration property: #decorateurs)
		-* (expression property: #functionDeclaration).
	(functionDeclaration property: #parameters)
		<>-* (parameter property: #functionDeclaration).
	(attributeNav property: #left)
		<>- (expression property: #attributeNav).
	(subscript property: #value) <>- (expression property: #subscript).
	(comprehensionExpression property: #comprehension)
		<>- (comprehension property: #comprehensionExpression).
	(comprehensionExpression property: #elt)
		<>- (expression property: #comprehensionExpression).
	(list property: #contents) <>-* (expression property: #list).
	(set property: #contents) <>-* (expression property: #set).
	(dict property: #itemsDict) <>-* (itemDict property: #dict).
	(tuple property: #contents) <>-* (expression property: #tuple)
]

{ #category : #definition }
FastPythonGenerator >> defineTraits [
  super defineTraits .

  assignedTarget := builder newTraitNamed: #AssignedTarget.
 " declaration := builder newTraitNamed: #Declaration."
  asynchronable := builder newTraitNamed: #Asynchronable.
  subscriptionIndex := builder newTraitNamed: #SubscriptionIndex.
  joinedStringItem := builder newTraitNamed: #JoinedStringItem.
]
