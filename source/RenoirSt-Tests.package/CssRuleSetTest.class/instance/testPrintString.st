Tests
testPrintString

	| ruleSet |
	ruleSet := CssRuleSet
		selector: CssUniversalSelector explicit link
		declarations:
			(CssDeclarationBlock new
				color: 'black';
				margin: 2 px;
				yourself).

	self assert: ruleSet printString equals: '*:link<n>{<n><t>color: black;<n><t>margin: 2px;<n>}' expandMacros