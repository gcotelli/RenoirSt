Tests
testFontStretchConstants

	self
		assert: CssFontConstants ultraCondensed equals: 'ultra-condensed';
		assert: CssFontConstants extraCondensed equals: 'extra-condensed';
		assert: CssFontConstants condensed equals: 'condensed';
		assert: CssFontConstants semiCondensed equals: 'semi-condensed';
		assert: CssFontConstants normal equals: 'normal';
		assert: CssFontConstants semiExpanded equals: 'semi-expanded';
		assert: CssFontConstants extraExpanded equals: 'extra-expanded';
		assert: CssFontConstants expanded equals: 'expanded';
		assert: CssFontConstants ultraExpanded equals: 'ultra-expanded'