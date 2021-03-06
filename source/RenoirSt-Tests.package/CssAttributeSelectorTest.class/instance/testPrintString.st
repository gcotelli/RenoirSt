Tests
testPrintString

	| baseSelector |
	baseSelector := CssUniversalSelector explicit.

	self
		assert: (CssAttributeSelector having: baseSelector theAttribute: 'foo') printString equals: '*[foo]';
		assert: (CssAttributeSelector isAttribute: 'foo' of: baseSelector equalTo: 'bar') printString equals: '*[foo="bar"]';
		assert: (CssAttributeSelector attribute: 'foo' of: baseSelector includes: 'bar') printString equals: '*[foo~="bar"]';
		assert: (CssAttributeSelector attribute: 'foo' of: baseSelector beginsWith: 'bar') printString equals: '*[foo^="bar"]';
		assert: (CssAttributeSelector attribute: 'foo' of: baseSelector endsWith: 'bar') printString equals: '*[foo$="bar"]';
		assert: (CssAttributeSelector attribute: 'foo' of: baseSelector includesSubstring: 'bar') printString equals: '*[foo*="bar"]';
		assert: (CssAttributeSelector firstValueOfAttribute: 'foo' of: baseSelector beginsWith: 'en') printString equals: '*[foo|="en"]'