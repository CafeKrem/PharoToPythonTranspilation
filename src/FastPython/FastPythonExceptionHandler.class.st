Class {
	#name : #FastPythonExceptionHandler,
	#superclass : #FastPythonEntity,
	#instVars : [
		'#exceptionAssociations => FMMany type: #FastPythonExceptionAssociation opposite: #exceptionHandler',
		'#try => FMOne type: #FastPythonTry opposite: #exceptHandlers'
	],
	#category : #'FastPython-Entities'
}
