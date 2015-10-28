Tests
testComplexFontFaceRule
	| builder |
	builder := CascadingStyleSheetBuilder new.
	builder
		declareFontFaceRuleWith:
			[ :style | 
			style
				fontFamily: 'MainText';
				src: (CssExternalFontReference locatedAt: 'gentium.eat' asZnUrl relativeToStyleSheet);
				src:
					(CssLocalFontReference toFontNamed: 'Gentium')
						, (CssExternalFontReference locatedAt: 'gentium.woff' asZnUrl relativeToStyleSheet withFormat: CssFontConstants woff);
				src: (CssExternalFontReference svgFontLocatedAt: 'fonts.svg' asZnUrl relativeToStyleSheet withId: 'simple') ].
	self
		assert: builder build printString
		equals:
			'@font-face<n>{<n><t>font-family: MainText;<n><t>src: url("gentium.eat");<n><t>src: local(Gentium), url("gentium.woff") format("woff");<n><t>src: url("fonts.svg#simple") format("svg");<n>}'
				expandMacros