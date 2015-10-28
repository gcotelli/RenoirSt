Tests
testBuildingSimpleStyleSheet
	
	| builder |
	builder := CascadingStyleSheetBuilder new.
	builder
		declareRuleSetFor: [ :selector | selector class: 'xxx' ]
			with: [ :style | 
			style
				color: 'white';
				margin: 12 pt ];
		declareRuleSetFor: [ :selector | selector id: #oop ] with: [ :style | style color: 'red' ].
	
	self
		assert: builder build printString
		equals: '.xxx<n>{<n><t>color: white;<n><t>margin: 12pt;<n>}<n><n>#oop<n>{<n><t>color: red;<n>}' expandMacros