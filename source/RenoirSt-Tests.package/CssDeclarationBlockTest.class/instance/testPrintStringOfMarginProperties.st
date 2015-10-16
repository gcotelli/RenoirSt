Tests
testPrintStringOfMarginProperties

	self 
		assert: [ :style | style margin: 5 cm ] rendersProperty: 'margin' withValue: '5cm';
		assert: [ :style | style marginLeft: 5 cm ] rendersProperty: 'margin-left' withValue: '5cm';
		assert: [ :style | style marginRight: 5 cm ] rendersProperty: 'margin-right' withValue: '5cm';
		assert: [ :style | style marginTop: 5 cm ] rendersProperty: 'margin-top' withValue: '5cm';
		assert: [ :style | style marginBottom: 5 cm ] rendersProperty: 'margin-bottom' withValue: '5cm'