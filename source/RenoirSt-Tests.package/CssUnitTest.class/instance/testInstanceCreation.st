Tests
testInstanceCreation

	| unit |
	unit := CssUnit identifiedBy: 'px'.

	self assert: unit printString equals: 'px'