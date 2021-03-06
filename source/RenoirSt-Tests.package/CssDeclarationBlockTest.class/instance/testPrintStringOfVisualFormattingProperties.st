Tests
testPrintStringOfVisualFormattingProperties

	self 
		assert: [ :style | style bottom: 4 cm ] rendersProperty: 'bottom' withValue: '4cm';
		assert: [ :style | style clear: CssConstants both ] rendersProperty: 'clear' withValue: 'both';
		assert: [ :style | style direction: 'ltr' ] rendersProperty: 'direction' withValue: 'ltr';
		assert: [ :style | style display: CssConstants block ] rendersProperty: 'display' withValue: 'block';
		assert: [ :style | style float: CssConstants left ] rendersProperty: 'float' withValue: 'left';
		assert: [ :style | style left: 4 cm ] rendersProperty: 'left' withValue: '4cm';
		assert: [ :style | style position: CssConstants relative ] rendersProperty: 'position' withValue: 'relative';
		assert: [ :style | style right: 4 cm ] rendersProperty: 'right' withValue: '4cm';
		assert: [ :style | style top: 4 cm ] rendersProperty: 'top' withValue: '4cm';
		assert: [ :style | style unicodeBidi: CssConstants normal ] rendersProperty: 'unicode-bidi' withValue: 'normal';
		assert: [ :style | style zIndex: 4 ] rendersProperty: 'z-index' withValue: '4'
		