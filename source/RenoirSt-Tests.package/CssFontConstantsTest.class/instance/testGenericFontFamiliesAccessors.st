Tests
testGenericFontFamiliesAccessors

	self
		assert: CssFontConstants serif equals: 'serif';
		assert: CssFontConstants sansSerif equals: 'sans-serif';
		assert: CssFontConstants cursive equals: 'cursive';
		assert: CssFontConstants fantasy equals: 'fantasy';
		assert: CssFontConstants monospace equals: 'monospace'