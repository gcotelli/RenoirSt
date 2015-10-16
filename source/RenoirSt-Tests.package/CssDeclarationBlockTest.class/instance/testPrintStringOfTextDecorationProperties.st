Tests
testPrintStringOfTextDecorationProperties

	self 
		assert: [ :style | style textDecorationLine: CssConstants underline ] rendersProperty: 'text-decoration-line' withValue: 'underline';
		assert: [ :style | style textDecorationColor: CssSVGColors red ] rendersProperty: 'text-decoration-color' withValue: 'red';
		assert: [ :style | style textDecorationStyle: CssConstants solid ] rendersProperty: 'text-decoration-style' withValue: 'solid';
		assert: [ :style | style textUnderlinePosition: CssConstants under ] rendersProperty: 'text-underline-position' withValue: 'under';
		assert: [ :style | style textEmphasisStyle: CssConstants filled ] rendersProperty: 'text-emphasis-style' withValue: 'filled';
		assert: [ :style | style textEmphasisColor: CssSVGColors red ] rendersProperty: 'text-emphasis-color' withValue: 'red';
		assert: [ :style | style textEmphasisPosition: CssConstants over ] rendersProperty: 'text-emphasis-position' withValue: 'over';
		assert: [ :style | style textEmphasis: CssConstants filled ] rendersProperty: 'text-emphasis' withValue: 'filled';
		assert: [ :style | style textShadow: CssConstants none ] rendersProperty: 'text-shadow' withValue: 'none'