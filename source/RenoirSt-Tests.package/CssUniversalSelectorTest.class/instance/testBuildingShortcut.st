tests
testBuildingShortcut
	
	| firstSelector secondSelector |
	
	firstSelector := CssUniversalSelector implicit class: 'custom'.
	secondSelector := CssTypeSelector ofType: 'div'.
	
	self assert: (firstSelector * secondSelector) printString equals: '.custom * div'