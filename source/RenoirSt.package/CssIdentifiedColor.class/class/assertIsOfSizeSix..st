private
assertIsOfSizeSix: aString
	
	aString size = 6
		ifFalse: [ CssInstanceCreationFailed signal: 'Invalid hexadecimal notation for a color.' ]