Tests
testPrintString

	self assert: (CssIdSelector for: #pastoral over: CssUniversalSelector explicit) printString equals: '*#pastoral'