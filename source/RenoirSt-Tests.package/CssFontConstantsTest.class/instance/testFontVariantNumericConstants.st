Tests
testFontVariantNumericConstants

	self
		assert: CssFontConstants ordinal equals: 'ordinal';
		assert: CssFontConstants slashedZero equals: 'slashed-zero';
		assert: CssFontConstants liningNums equals: 'lining-nums';
		assert: CssFontConstants oldstyleNums equals: 'oldstyle-nums';
		assert: CssFontConstants proportionalNums equals: 'proportional-nums';
		assert: CssFontConstants tabularNums equals: 'tabular-nums';
		assert: CssFontConstants diagonalFractions equals: 'diagonal-fractions';
		assert: CssFontConstants stackedFractions equals: 'stacked-fractions';
		assert: CssFontConstants normal equals: 'normal'