private
assertIsASymbol: anObject
	
	anObject isSymbol
		ifFalse: [ CssInstanceCreationFailed signal: ('<1s> must be a symbol to be considered a valid id' expandMacrosWith: anObject printString) ]