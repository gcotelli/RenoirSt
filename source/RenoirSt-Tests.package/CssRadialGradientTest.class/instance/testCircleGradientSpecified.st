Tests
testCircleGradientSpecified

	| gradient |
	
	gradient := CssRadialGradient circular: 5 em fading: { CssSVGColors white. CssSVGColors red }.
	self assert: gradient printString equals: 'radial-gradient(5em circle, white, red)'