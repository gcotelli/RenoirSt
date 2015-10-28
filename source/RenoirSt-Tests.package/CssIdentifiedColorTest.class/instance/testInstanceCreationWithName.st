Tests
testInstanceCreationWithName

	| blue |
	blue := CssIdentifiedColor
		representing: (CssRGBColor red: 0 percent green: 0 percent blue: 100 percent)
		identifiedBy: 'blue'.

	self assert: blue printString equals: 'blue'