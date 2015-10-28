Tests
testBoxShadowWithBlurRadiusPrintString

	self assert: (CssBoxShadow horizontalOffset: 64 px verticalOffset: 64 px blurRadius: 12 px) printString equals: '64px 64px 12px'