Tests
testRepeatingGradientWithNoDirectionSpecified
	
	| gradient |
	gradient := CssLinearGradient
		fading:
			{CssSVGColors white.
			CssSVGColors red}.
	gradient beRepeating.
	
	self assert: gradient printString equals: 'repeating-linear-gradient(white, red)'