Tests
testPrintStringOfUIElementsStatePseudoClasses

	| baseSelector |

	baseSelector := CssUniversalSelector explicit.

	self
		assert: (CssPseudoClassSelector enabledOn: baseSelector) printString equals: '*:enabled';
		assert: (CssPseudoClassSelector disabledOn: baseSelector) printString equals: '*:disabled';
		assert: (CssPseudoClassSelector checkedOn: baseSelector) printString equals: '*:checked'