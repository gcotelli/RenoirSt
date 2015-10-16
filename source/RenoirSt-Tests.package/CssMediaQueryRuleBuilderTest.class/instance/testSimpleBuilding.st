Tests
testSimpleBuilding
	
	| builder |
	builder := CssMediaQueryRuleBuilder new.
	builder orientation: CssMediaQueryConstants portrait.
	
	self
		assert: builder build printString
		equals:
			('@media all and (orientation: portrait)<1s>{<1s><2s><1s>}'
				expandMacrosWith: OSPlatform current lineEnding
				with: Character tab asString)