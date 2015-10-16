Tests
testFontVariantPositionConstants

	self
		assert: CssFontConstants sub  equals: 'sub';
		assert: CssFontConstants super equals: 'super';
		assert: CssFontConstants normal equals: 'normal'