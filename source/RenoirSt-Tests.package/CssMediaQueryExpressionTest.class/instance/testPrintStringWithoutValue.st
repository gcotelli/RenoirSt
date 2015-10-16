Tests
testPrintStringWithoutValue

	self assert: (CssMediaQueryExpression forFeatureNamed: 'color') printString equals: '(color)'