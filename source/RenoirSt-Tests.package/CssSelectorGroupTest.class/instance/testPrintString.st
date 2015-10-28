Tests
testPrintString
	
	| firstSelector secondSelector |
	
	firstSelector := CssUniversalSelector implicit class: 'custom'.
	secondSelector := CssTypeSelector ofType: 'div'.
	
	self
		assert: (CssSelectorGroup with: firstSelector with: secondSelector) printString
		equals: '.custom ,<n>div' expandMacros