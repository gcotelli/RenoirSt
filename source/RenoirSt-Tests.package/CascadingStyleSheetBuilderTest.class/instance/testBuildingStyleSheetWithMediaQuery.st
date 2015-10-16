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
		equals:
			('.xxx<1s>{<1s><2s>margin: 12pt;<1s>}<1s><1s>@media print<1s>{<1s><2s>#oop<1s><2s>{<1s><2s><2s>color: red;<1s><2s>}<1s>}'
				expandMacrosWith: OSPlatform current lineEnding
				with: Character tab asString)