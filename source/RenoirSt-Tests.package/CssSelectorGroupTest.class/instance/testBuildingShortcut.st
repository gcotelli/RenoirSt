Tests
testBuildingShortcut
	
	| firstSelector secondSelector |
	
	firstSelector := CssUniversalSelector implicit class: 'custom'.
	secondSelector := CssTypeSelector ofType: 'div'.
	
	self
		assert: (firstSelector , secondSelector) printString
		equals: '.custom ,<n>div' expandMacros;

		assert: (firstSelector , secondSelector , secondSelector) printString
		equals: '.custom ,<n>div ,<n>div' expandMacros