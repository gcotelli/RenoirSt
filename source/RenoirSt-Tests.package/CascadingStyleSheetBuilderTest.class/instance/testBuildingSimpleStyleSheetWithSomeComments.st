Tests
testBuildingSimpleStyleSheetWithSomeComments

	| builder |
	builder := CascadingStyleSheetBuilder new.
	builder
		declareRuleSetFor: [ :selector | selector id: #oop ]
		with: [ :style | style color: 'red' ]
		andComment: 'Example CSS'.

	self
		assert: builder build printString
		equals:
			('/*Example CSS*/<1s>#oop<1s>{<1s><2s>color: red;<1s>}'
				expandMacrosWith: OSPlatform current lineEnding
				with: Character tab asString)