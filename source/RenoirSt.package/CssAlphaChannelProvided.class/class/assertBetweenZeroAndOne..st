private
assertBetweenZeroAndOne: aNumber
	
	(aNumber between: 0 and: aNumber class one)
		ifFalse: [ 
			CssInstanceCreationFailed
				signal: ('The alpha value (<1s>) must be between zero and one.' expandMacrosWith: aNumber printString) ]