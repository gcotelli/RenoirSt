Tests
testBoxShadowWithBlurRadiusAndSpreadDistancePrintString

	self
		assert:
			(CssBoxShadow
				horizontalOffset: 64 px
				verticalOffset: 64 px
				blurRadius: 12 px
				spreadDistance: 40 px) printString
		equals: '64px 64px 12px 40px'