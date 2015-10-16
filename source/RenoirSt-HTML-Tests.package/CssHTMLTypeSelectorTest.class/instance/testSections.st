Tests
testSections

	self 
		assert: CssUniversalSelector implicit body printString equals: 'body';
		assert: (CssUniversalSelector implicit headingLevel: 1) printString equals: 'h1';
		assert: (CssUniversalSelector implicit headingLevel: 3) printString equals: 'h3';
		assert: CssUniversalSelector implicit address printString equals: 'address'