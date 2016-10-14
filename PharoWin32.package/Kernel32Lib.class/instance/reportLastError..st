as yet unclassified
reportLastError: during
	| lastError |
	lastError := self lastError.
	self error: 'Unespected error during: ' , during asString , ': ' , lastError asString