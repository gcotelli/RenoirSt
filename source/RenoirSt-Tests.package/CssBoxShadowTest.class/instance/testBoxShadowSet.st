Tests
testBoxShadowSet
	
	| insetShadow shadow |
	
	insetShadow := CssBoxShadow horizontalOffset: 1 px verticalOffset: 2 px.
	insetShadow beInset.
	shadow := CssBoxShadow
		horizontalOffset: 1 px
		verticalOffset: 2 px
		blurRadius: 1 px
		spreadDistance: 1 px
		color: CssSVGColors white.
	
	self assert: (insetShadow , shadow) printString equals: 'inset 1px 2px, 1px 2px 1px 1px white'