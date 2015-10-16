Tests
testBuildingShortcut

	| parent child |
	
	parent := CssUniversalSelector implicit class: 'custom'.
	child := CssTypeSelector ofType: 'div'.
	
	self assert: (parent + child) printString equals: '.custom + div'