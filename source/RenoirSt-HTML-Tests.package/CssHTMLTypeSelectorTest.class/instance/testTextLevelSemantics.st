Tests
testTextLevelSemantics

	self
		assert: CssUniversalSelector implicit anchor printString equals: 'a';
		assert: CssUniversalSelector implicit span printString equals: 'span'