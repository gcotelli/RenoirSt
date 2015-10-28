Tests
testPrintString

	| ruleSet anotherRuleSet styleSheet |
	ruleSet := CssRuleSet
		selector: CssUniversalSelector explicit link
		declarations:
			(CssDeclarationBlock new
				color: 'black';
				margin: 2 px;
				yourself).

	anotherRuleSet := CssRuleSet selector: CssUniversalSelector explicit declarations: CssDeclarationBlock new.

	styleSheet := CascadingStyleSheet
		withAll:
			{ruleSet.
			anotherRuleSet}.

	self assert: styleSheet printString equals: '*:link<n>{<n><t>color: black;<n><t>margin: 2px;<n>}<n><n>*<n>{<n>}' expandMacros