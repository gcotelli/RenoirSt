Tests
testInsetBoxShadowPrintString

	| insetShadow |
	insetShadow := CssBoxShadow horizontalOffset: 64 px verticalOffset: 64 px.
	insetShadow beInset.
	
	self assert: insetShadow printString equals: 'inset 64px 64px'