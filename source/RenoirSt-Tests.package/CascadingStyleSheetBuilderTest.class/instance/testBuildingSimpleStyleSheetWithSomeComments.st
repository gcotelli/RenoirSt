Tests
testBuildingSimpleStyleSheetWithSomeComments

	| builder |
	builder := CascadingStyleSheetBuilder new.
	builder declareRuleSetFor: [ :selector | selector id: #oop ] with: [ :style | style color: 'red' ] andComment: 'Example CSS'.

	self assert: builder build printString equals: '/*Example CSS*/<n>#oop<n>{<n><t>color: red;<n>}' expandMacros