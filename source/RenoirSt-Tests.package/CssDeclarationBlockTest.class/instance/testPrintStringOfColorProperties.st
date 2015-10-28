Tests
testPrintStringOfColorProperties

	self
		assert: [ :style | style opacity: 0 ] rendersProperty: 'opacity' withValue: '0';
		assert: [ :style | style color: CssSVGColors yellow ] rendersProperty: 'color' withValue: 'yellow'