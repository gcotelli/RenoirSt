Tests
testCircleGradientPositioned

	| gradient |
	
	gradient := CssRadialGradient circular: 5 em at: CssConstants center fading: { CssSVGColors white. CssSVGColors red }.
	self assert: gradient printString equals: 'radial-gradient(5em circle at center, white, red)'