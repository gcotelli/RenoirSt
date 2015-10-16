Tests
testPrintStringOfTableProperties

	self 
		assert: [ :style | style borderCollapse: CssConstants collapse ] rendersProperty: 'border-collapse' withValue: 'collapse';
		assert: [ :style | style borderSpacing: 15 pt ] rendersProperty: 'border-spacing' withValue: '15pt';
		assert: [ :style | style captionSide:  CssConstants bottom ] rendersProperty: 'caption-side' withValue: 'bottom';
		assert: [ :style | style emptyCells:  CssConstants hide ] rendersProperty: 'empty-cells' withValue: 'hide';
		assert: [ :style | style tableLayout:  CssConstants fixed ] rendersProperty: 'table-layout' withValue: 'fixed'