Tests
testPrintStringOfUIProperties

	self 
		assert: [ :style | style cursor: CssConstants auto ] rendersProperty: 'cursor' withValue: 'auto';
		assert: [ :style | style outline: CssConstants dotted ] rendersProperty: 'outline' withValue: 'dotted';
		assert: [ :style | style outlineColor: CssSVGColors black ] rendersProperty: 'outline-color' withValue: 'black';
		assert: [ :style | style outlineStyle: CssConstants dotted ] rendersProperty: 'outline-style' withValue: 'dotted';
		assert: [ :style | style outlineWidth: 2 px ] rendersProperty: 'outline-width' withValue: '2px'