Tests
testPrintStringOfBorderProperties

	self
		assert: [ :style | style border: { CssConstants thin. CssConstants dashed. CssSVGColors royalBlue }  ] rendersProperty: 'border' withValue: 'thin dashed royalblue';
		assert: [ :style | style borderBottom: { CssConstants thin. CssConstants dashed. CssSVGColors royalBlue }  ] rendersProperty: 'border-bottom' withValue: 'thin dashed royalblue';
		assert: [ :style | style borderTop: { CssConstants thin. CssConstants dashed. CssSVGColors royalBlue }  ] rendersProperty: 'border-top' withValue: 'thin dashed royalblue';
		assert: [ :style | style borderRight: { CssConstants thin. CssConstants dashed. CssSVGColors royalBlue }  ] rendersProperty: 'border-right' withValue: 'thin dashed royalblue';
		assert: [ :style | style borderLeft: { CssConstants thin. CssConstants dashed. CssSVGColors royalBlue }  ] rendersProperty: 'border-left' withValue: 'thin dashed royalblue';
		assert: [ :style | style borderColor: CssSVGColors royalBlue ] rendersProperty: 'border-color' withValue: 'royalblue';
		assert: [ :style | style borderWidth:  CssConstants thin. ] rendersProperty: 'border-width' withValue: 'thin';
		assert: [ :style | style borderStyle: CssConstants dashed. ] rendersProperty: 'border-style' withValue: 'dashed';
		assert: [ :style | style borderTopColor: CssSVGColors royalBlue ] rendersProperty: 'border-top-color' withValue: 'royalblue';
		assert: [ :style | style borderTopWidth:  CssConstants thin. ] rendersProperty: 'border-top-width' withValue: 'thin';
		assert: [ :style | style borderTopStyle: CssConstants dashed. ] rendersProperty: 'border-top-style' withValue: 'dashed';
		assert: [ :style | style borderBottomColor: CssSVGColors royalBlue ] rendersProperty: 'border-bottom-color' withValue: 'royalblue';
		assert: [ :style | style borderBottomWidth:  CssConstants thin. ] rendersProperty: 'border-bottom-width' withValue: 'thin';
		assert: [ :style | style borderBottomStyle: CssConstants dashed. ] rendersProperty: 'border-bottom-style' withValue: 'dashed';
		assert: [ :style | style borderLeftColor: CssSVGColors royalBlue ] rendersProperty: 'border-left-color' withValue: 'royalblue';
		assert: [ :style | style borderLeftWidth:  CssConstants thin. ] rendersProperty: 'border-left-width' withValue: 'thin';
		assert: [ :style | style borderLeftStyle: CssConstants dashed. ] rendersProperty: 'border-left-style' withValue: 'dashed';
		assert: [ :style | style borderRightColor: CssSVGColors royalBlue ] rendersProperty: 'border-right-color' withValue: 'royalblue';
		assert: [ :style | style borderRightWidth:  CssConstants thin. ] rendersProperty: 'border-right-width' withValue: 'thin';
		assert: [ :style | style borderRightStyle: CssConstants dashed. ] rendersProperty: 'border-right-style' withValue: 'dashed';
		assert: [ :style | style borderRadius: 4 px ] rendersProperty: 'border-radius' withValue: '4px';
		assert: [ :style | style borderTopLeftRadius: 1 px] rendersProperty: 'border-top-left-radius' withValue: '1px';
		assert: [ :style | style borderBottomLeftRadius: 1 px] rendersProperty: 'border-bottom-left-radius' withValue: '1px';
		assert: [ :style | style borderTopRightRadius: 1 px] rendersProperty: 'border-top-right-radius' withValue: '1px';
		assert: [ :style | style borderBottomRightRadius: 1 px] rendersProperty: 'border-bottom-right-radius' withValue: '1px'