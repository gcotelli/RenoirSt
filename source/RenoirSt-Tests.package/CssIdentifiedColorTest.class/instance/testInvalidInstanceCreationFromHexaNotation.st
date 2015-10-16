Tests
testInvalidInstanceCreationFromHexaNotation
	
	self
		should: [ CssIdentifiedColor fromHexadecimalNotation: #'00' ]
		raise: CssInstanceCreationFailed
		withExceptionDo: [ :error | self assert: error messageText equals: 'Invalid hexadecimal notation for a color.' ]