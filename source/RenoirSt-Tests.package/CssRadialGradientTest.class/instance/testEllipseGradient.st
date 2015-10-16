Tests
testEllipseGradient

	| gradient |
	
	gradient := CssRadialGradient elliptical: {5 em. 3 em} fading: { CssSVGColors white. CssSVGColors red }.
	self assert: gradient printString equals: 'radial-gradient(5em 3em ellipse, white, red)'