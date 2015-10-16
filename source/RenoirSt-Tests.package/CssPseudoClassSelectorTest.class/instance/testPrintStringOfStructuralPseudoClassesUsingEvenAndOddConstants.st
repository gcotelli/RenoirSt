Tests
testPrintStringOfStructuralPseudoClassesUsingEvenAndOddConstants

	| baseSelector |

	baseSelector := CssUniversalSelector explicit.

	self
		assert: (CssPseudoClassSelector childAt: CssConstants even on: baseSelector) printString equals: '*:nth-child(even)';
		assert: (CssPseudoClassSelector siblingOfTypeAt: CssConstants odd on: baseSelector) printString equals: '*:nth-of-type(odd)'