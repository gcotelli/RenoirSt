Tests
testPrintStringOfTargetPseudoClass

	| baseSelector |

	baseSelector := CssUniversalSelector explicit.

	self
		assert: (CssPseudoClassSelector targetOn: baseSelector) printString equals: '*:target'