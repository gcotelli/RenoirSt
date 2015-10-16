Tests
testPrintString

	self
		assert: (CssClassSelector for: 'pastoral' over: CssUniversalSelector implicit) printString equals: '.pastoral';
		assert: (CssClassSelector for: #pastoral over: CssUniversalSelector explicit) printString equals: '*.pastoral'