Tests
testSections

	self
		assert: CssUniversalSelector implicit body printString equals: 'body';
		assert: (CssUniversalSelector implicit headingLevel: 1) printString equals: 'h1';
		assert: (CssUniversalSelector implicit headingLevel: 3) printString equals: 'h3';
		assert: CssUniversalSelector implicit h1 printString equals: 'h1';
		assert: CssUniversalSelector implicit h2 printString equals: 'h2';
		assert: CssUniversalSelector implicit h3 printString equals: 'h3';
		assert: CssUniversalSelector implicit h4 printString equals: 'h4';
		assert: CssUniversalSelector implicit h5 printString equals: 'h5';
		assert: CssUniversalSelector implicit h6 printString equals: 'h6';
		assert: CssUniversalSelector implicit address printString equals: 'address';
		assert: CssUniversalSelector implicit nav printString equals: 'nav';
		assert: CssUniversalSelector implicit article printString equals: 'article';
		assert: CssUniversalSelector implicit section printString equals: 'section';
		assert: CssUniversalSelector implicit aside printString equals: 'aside';
		assert: CssUniversalSelector implicit header printString equals: 'header';
		assert: CssUniversalSelector implicit footer printString equals: 'footer'