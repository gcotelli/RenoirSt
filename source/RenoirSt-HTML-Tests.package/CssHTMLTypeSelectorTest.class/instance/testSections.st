Tests
testSections

	self
		assert: CssUniversalSelector implicit body printString equals: 'body';
		assert: (CssUniversalSelector implicit headingLevel: 1) printString equals: 'h1';
		assert: (CssUniversalSelector implicit headingLevel: 3) printString equals: 'h3';
		assert: CssUniversalSelector implicit address printString equals: 'address';
		assert: CssUniversalSelector implicit nav printString equals: 'nav';
		assert: CssUniversalSelector implicit article printString equals: 'article';
		assert: CssUniversalSelector implicit section printString equals: 'section';
		assert: CssUniversalSelector implicit aside printString equals: 'aside';
		assert: CssUniversalSelector implicit header printString equals: 'header';
		assert: CssUniversalSelector implicit footer printString equals: 'footer'