Tests
testFontFormatConstants

	self
		assert: CssFontConstants woff equals: 'woff';
		assert: CssFontConstants truetype equals: 'truetype';
		assert: CssFontConstants opentype equals: 'opentype';
		assert: CssFontConstants embeddedOpentype equals: 'embedded-opentype';
		assert: CssFontConstants svg equals: 'svg'