Tests
testPrintStringOfPaddingProperties

	self 
		assert: [ :style | style padding: 5 cm ] rendersProperty: 'padding' withValue: '5cm';
		assert: [ :style | style paddingLeft: 5 cm ] rendersProperty: 'padding-left' withValue: '5cm';
		assert: [ :style | style paddingRight: 5 cm ] rendersProperty: 'padding-right' withValue: '5cm';
		assert: [ :style | style paddingTop: 5 cm ] rendersProperty: 'padding-top' withValue: '5cm';
		assert: [ :style | style paddingBottom: 5 cm ] rendersProperty: 'padding-bottom' withValue: '5cm'