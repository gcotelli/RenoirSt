Tests
testSimpleFontFaceRule

	| builder |
	builder := CascadingStyleSheetBuilder new.
	builder
		declareFontFaceRuleWith: [ :style | 
			style
				fontFamily: 'Gentium';
				src: 'http://example.com/fonts/gentium.woff' asZnUrl ].

	self
		assert: builder build printString
		equals: '@font-face<n>{<n><t>font-family: Gentium;<n><t>src: url("http://example.com/fonts/gentium.woff");<n>}' expandMacros 