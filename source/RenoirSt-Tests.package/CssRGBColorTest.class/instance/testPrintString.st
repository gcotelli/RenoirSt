Tests
testPrintString
	
	| color |
	
	color := CssRGBColor red: 255 green: 0 blue: 0.
	
	self assert: color printString equals: 'rgb(255,0,0)'