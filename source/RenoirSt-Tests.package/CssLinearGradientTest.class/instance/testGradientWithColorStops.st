Tests
testGradientWithColorStops

	| gradient |
	
	gradient := CssLinearGradient fading: { CssSVGColors white. (CssColorStop for: CssSVGColors red at: 20 percent) }.
	self assert: gradient printString equals: 'linear-gradient(white, red 20%)'