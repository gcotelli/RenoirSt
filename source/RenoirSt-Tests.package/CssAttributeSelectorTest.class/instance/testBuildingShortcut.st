Tests
testBuildingShortcut

	| baseSelector |
	baseSelector := CssUniversalSelector explicit.

	self
		assert: (baseSelector havingAttribute: 'foo') printString equals: '*[foo]';
		assert: (baseSelector withAttribute: 'foo' equalTo: 'bar') printString equals: '*[foo="bar"]';
		assert: (baseSelector attribute: 'foo' includes: 'bar') printString equals: '*[foo~="bar"]';
		assert: (baseSelector attribute: 'foo' beginsWith: 'bar') printString equals: '*[foo^="bar"]';
		assert: (baseSelector attribute: 'foo' endsWith: 'bar') printString equals: '*[foo$="bar"]';
		assert: (baseSelector attribute: 'foo' includesSubstring: 'bar') printString equals: '*[foo*="bar"]';
		assert: (baseSelector firstValueOfAttribute: 'foo' beginsWith: 'en') printString equals: '*[foo|="en"]'