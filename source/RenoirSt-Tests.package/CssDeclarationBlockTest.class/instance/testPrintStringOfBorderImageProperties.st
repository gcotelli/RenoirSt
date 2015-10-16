Tests
testPrintStringOfBorderImageProperties

	self
		assert: [ :style | style borderImageSource: CssConstants none ]
			rendersProperty: 'border-image-source'
			withValue: 'none';
		assert: [ :style | style borderImageSlice: 50 percent ] rendersProperty: 'border-image-slice' withValue: '50%';
		assert: [ :style | style borderImageWidth: 2 px ] rendersProperty: 'border-image-width' withValue: '2px';
		assert: [ :style | style borderImageOutset: 3 px ] rendersProperty: 'border-image-outset' withValue: '3px';
		assert: [ :style | style borderImageRepeat: CssConstants round ]
			rendersProperty: 'border-image-repeat'
			withValue: 'round';
		assert: [ :style | style borderImage: CssConstants none ] rendersProperty: 'border-image' withValue: 'none';
		assert: [ :style | style boxShadow: { 10 px. 10 px. 10 px. 35 px. CssSVGColors blue} ] rendersProperty: 'box-shadow' withValue: '10px 10px 10px 35px blue'