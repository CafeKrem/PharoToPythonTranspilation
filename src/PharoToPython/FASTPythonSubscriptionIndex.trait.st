Trait {
	#name : #FASTPythonSubscriptionIndex,
	#instVars : [
		'#parentSubscription => FMOne type: #FASTPythonSubscript opposite: #index'
	],
	#category : #'PharoToPython-Traits'
}

{ #category : #meta }
FASTPythonSubscriptionIndex classSide >> annotation [

	<FMClass: #SubscriptionIndex super: #Object>
	<package: #PharoToPython>
	<generated>
	^self
]

{ #category : #accessing }
FASTPythonSubscriptionIndex >> parentSubscription [
	"Relation named: #parentSubscription type: #FASTPythonSubscript opposite: #index"

	<generated>
	<container>
	^ parentSubscription
]

{ #category : #accessing }
FASTPythonSubscriptionIndex >> parentSubscription: anObject [

	<generated>
	parentSubscription := anObject
]

{ #category : #navigation }
FASTPythonSubscriptionIndex >> parentSubscriptionGroup [
	<generated>
	<navigation: 'ParentSubscription'>
	^ MooseSpecializedGroup with: self parentSubscription
]
