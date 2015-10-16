Tests
testInstanceCreationFromHexaNotation
	
	| red |
	
	red := CssIdentifiedColor fromHexadecimalNotation: #f00.
	
	self
		assert: red printString equals: '#f00';
		assert: red color printString equals: 'rgb(255,0,0)'.
		
	red := CssIdentifiedColor fromHexadecimalNotation: #ff0000.
	
	self
		assert: red printString equals: '#ff0000';
		assert: red color printString equals: 'rgb(255,0,0)'