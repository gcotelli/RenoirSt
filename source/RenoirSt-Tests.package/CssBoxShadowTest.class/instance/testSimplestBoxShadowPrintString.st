Tests
testSimplestBoxShadowPrintString

	self assert: (CssBoxShadow horizontalOffset: 64 px verticalOffset: 64 px) printString equals: '64px 64px'