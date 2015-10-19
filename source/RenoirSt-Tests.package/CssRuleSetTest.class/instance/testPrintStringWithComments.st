Tests
testPrintStringWithComments

	| ruleSet |

	ruleSet := CssRuleSet
		selector: CssUniversalSelector explicit link
		declarations:
			(CssDeclarationBlock new
				color: 'black';
				margin: 2 px;
				yourself)
		comment: 'All links must be black and with a margin of 2 pixels'.

	self
		assert: ruleSet printString
		equals:
			('/*All links must be black and with a margin of 2 pixels*/<1s>*:link<1s>{<1s><2s>color: black;<1s><2s>margin: 2px;<1s>}'
				expandMacrosWith: OSPlatform current lineEnding
				with: Character tab asString)