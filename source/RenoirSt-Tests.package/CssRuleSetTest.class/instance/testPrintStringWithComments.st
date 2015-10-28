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
		equals: '/*All links must be black and with a margin of 2 pixels*/<n>*:link<n>{<n><t>color: black;<n><t>margin: 2px;<n>}' expandMacros