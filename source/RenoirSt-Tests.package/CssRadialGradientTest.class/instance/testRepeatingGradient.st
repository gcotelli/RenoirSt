Tests
testRepeatingGradient

	| gradient |
	
	gradient := CssRadialGradient fading: { CssSVGColors white. CssSVGColors red }.
	gradient beRepeating.
	self assert: gradient printString equals: 'repeating-radial-gradient(white, red)'