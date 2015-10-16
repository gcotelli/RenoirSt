Tests
testFontVariantLigaturesConstants

	self
		assert: CssFontConstants commonLigatures  equals: 'common-ligatures';
		assert: CssFontConstants noCommonLigatures equals: 'no-common-ligatures';
		assert: CssFontConstants discretionaryLigatures equals: 'discretionary-ligatures';
		assert: CssFontConstants noDiscretionaryLigatures  equals: 'no-discretionary-ligatures';
		assert: CssFontConstants historicalLigatures equals: 'historical-ligatures';
		assert: CssFontConstants noHistoricalLigatures equals: 'no-historical-ligatures';
		assert: CssFontConstants contextual equals: 'contextual';
		assert: CssFontConstants noContextual equals: 'no-contextual'