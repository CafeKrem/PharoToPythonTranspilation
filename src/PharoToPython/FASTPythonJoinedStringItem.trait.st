Trait {
	#name : #FASTPythonJoinedStringItem,
	#instVars : [
		'#joinedStr => FMOne type: #FASTPythonJoinedStr opposite: #items'
	],
	#category : #'PharoToPython-Traits'
}

{ #category : #meta }
FASTPythonJoinedStringItem classSide >> annotation [

	<FMClass: #JoinedStringItem super: #Object>
	<package: #PharoToPython>
	<generated>
	^self
]

{ #category : #accessing }
FASTPythonJoinedStringItem >> joinedStr [
	"Relation named: #joinedStr type: #FASTPythonJoinedStr opposite: #items"

	<generated>
	<container>
	^ joinedStr
]

{ #category : #accessing }
FASTPythonJoinedStringItem >> joinedStr: anObject [

	<generated>
	joinedStr := anObject
]

{ #category : #navigation }
FASTPythonJoinedStringItem >> joinedStrGroup [
	<generated>
	<navigation: 'JoinedStr'>
	^ MooseSpecializedGroup with: self joinedStr
]
