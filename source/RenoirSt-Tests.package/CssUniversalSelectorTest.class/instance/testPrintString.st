tests
testPrintString
	
	self
		assert: CssUniversalSelector implicit printString equals: '';
		assert: CssUniversalSelector explicit printString equals: '*'