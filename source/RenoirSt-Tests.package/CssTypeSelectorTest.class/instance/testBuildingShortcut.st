Tests
testBuildingShortcut
	
	| firstSelector  |
	
	firstSelector := CssUniversalSelector implicit class: 'custom'.
	
	self assert: (firstSelector descendantOfType: 'div') printString equals: '.custom div'