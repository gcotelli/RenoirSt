Tests
testNewWithAlpha

	| color colorWithAlpha |

	color := CssHSLColor hue: 120 saturation: 100 percent lightness: 50 percent.

	self assert: color printString equals: 'hsl(120,100%,50%)'.

	colorWithAlpha := color newWithAlpha: 0.75.

	self assert: colorWithAlpha printString equals: 'hsla(120,100%,50%,0.75)'