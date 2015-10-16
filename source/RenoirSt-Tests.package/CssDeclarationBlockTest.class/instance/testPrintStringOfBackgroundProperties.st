Tests
testPrintStringOfBackgroundProperties
	self
		assert: [ :style | style background: CssSVGColors blue ] rendersProperty: 'background' withValue: 'blue';
		assert: [ :style | style backgroundAttachment: CssConstants scroll ]
			rendersProperty: 'background-attachment'
			withValue: 'scroll';
		assert: [ :style | style backgroundColor: CssSVGColors red ] rendersProperty: 'background-color' withValue: 'red';
		assert: [ :style | style backgroundImage: 'logo.png' ] rendersProperty: 'background-image' withValue: 'logo.png';
		assert: [ :style |  style backgroundPosition: {0 percent. 0 percent} ]
			rendersProperty: 'background-position'
			withValue: '0% 0%';
		assert: [ :style | style backgroundRepeat: CssConstants repeat ]
			rendersProperty: 'background-repeat'
			withValue: 'repeat';
		assert: [ :style | style backgroundSize: CssConstants contain ]
			rendersProperty: 'background-size'
			withValue: 'contain';
		assert: [ :style | style backgroundClip: CssConstants borderBox ]
			rendersProperty: 'background-clip'
			withValue: 'border-box';
		assert: [ :style | style backgroundOrigin: CssConstants borderBox ]
			rendersProperty: 'background-origin'
			withValue: 'border-box'