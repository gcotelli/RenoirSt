Tests
testPrintStringOfMoreFontProperties
	self
		assert: [ :style | 
					style
						fontVariantLigatures:
							{(CssFontConstants commonLigatures).
							(CssFontConstants noDiscretionaryLigatures).
							(CssFontConstants historicalLigatures).
							(CssFontConstants contextual)} ]
			rendersProperty: 'font-variant-ligatures'
			withValue: 'common-ligatures no-discretionary-ligatures historical-ligatures contextual';
		assert: [ :style | style fontVariantPosition: CssFontConstants sub ]
			rendersProperty: 'font-variant-position'
			withValue: 'sub';
		assert: [ :style | style fontVariantCaps: CssFontConstants smallCaps ]
			rendersProperty: 'font-variant-caps'
			withValue: 'small-caps';
		assert: [ :style | style fontVariantNumeric: CssFontConstants ordinal ]
			rendersProperty: 'font-variant-numeric'
			withValue: 'ordinal'