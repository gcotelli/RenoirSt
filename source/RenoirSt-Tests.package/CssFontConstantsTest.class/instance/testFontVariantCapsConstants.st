Tests
testFontVariantCapsConstants

	self
		assert: CssFontConstants smallCaps equals: 'small-caps';
		assert: CssFontConstants allSmallCaps equals: 'all-small-caps';
		assert: CssFontConstants petiteCaps equals: 'petite-caps';
		assert: CssFontConstants allPetiteCaps equals: 'all-petite-caps';
		assert: CssFontConstants unicase equals: 'unicase';
		assert: CssFontConstants titlingCaps equals: 'titling-caps';
		assert: CssFontConstants normal equals: 'normal'