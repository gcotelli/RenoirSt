Tests
testBuildingStyleSheetWithMediaQuery

	| builder |
	builder := CascadingStyleSheetBuilder new.
	builder
		declareRuleSetFor: [ :selector | selector class: 'xxx' ] with: [ :style | style margin: 12 pt ];
		declare: [ :cssBuilder | cssBuilder declareRuleSetFor: [ :selector | selector id: #oop ] with: [ :style | style color: 'red' ] ]
			forMediaMatching: [ :queryBuilder | queryBuilder type: CssMediaQueryConstants print ].

	self
		assert: builder build printString
		equals: '.xxx<n>{<n><t>margin: 12pt;<n>}<n><n>@media print<n>{<n><t>#oop<n><t>{<n><t><t>color: red;<n><t>}<n>}' expandMacros