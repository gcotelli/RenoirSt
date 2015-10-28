Tests
testNewWithAlpha

	| blue |
	blue := CssIdentifiedColor
		representing: (CssRGBColor red: 0 percent green: 0 percent blue: 100 percent)
		identifiedBy: 'blue'.

	self assert: blue printString = 'blue'.
	
	self assert: (blue newWithAlpha: 0.5) printString equals: 'rgba(0%,0%,100%,0.5)'