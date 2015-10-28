Tests
testBoxShadowWithColorPrintString

	self
		assert: (CssBoxShadow horizontalOffset: 64 px verticalOffset: 64 px color: CssSVGColors red) printString equals: '64px 64px red';
		assert:
			(CssBoxShadow
				horizontalOffset: 64 px
				verticalOffset: 64 px
				blurRadius: 3 px
				color: CssSVGColors red) printString
			equals: '64px 64px 3px red';
		assert:
			(CssBoxShadow
				horizontalOffset: 64 px
				verticalOffset: 64 px
				blurRadius: 3 px
				spreadDistance: 8 px
				color: CssSVGColors red) printString
			equals: '64px 64px 3px 8px red'