Tests
testPNewWithAlpha

	| color colorWithAlpha |

	color := CssRGBColor red: 255 green: 0 blue: 0.

	self assert: color printString equals: 'rgb(255,0,0)'.

	colorWithAlpha := color newWithAlpha: 0.5.

	self assert: colorWithAlpha printString equals: 'rgba(255,0,0,0.5)'