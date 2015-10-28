Tests
testSimpleBuilding

	| builder |
	builder := CssMediaQueryRuleBuilder new.
	builder orientation: CssMediaQueryConstants portrait.

	self assert: builder build printString equals: '@media all and (orientation: portrait)<n>{<n><t><n>}' expandMacros