Tests
testPrintStringOfStructuralPseudoClasses

	| baseSelector |

	baseSelector := CssUniversalSelector explicit.

	self
		assert: (CssPseudoClassSelector rootOn: baseSelector) printString equals: '*:root';
		assert: (CssPseudoClassSelector childAt: 2 on: baseSelector) printString equals: '*:nth-child(2)';
		assert: (CssPseudoClassSelector childFromLastAt: 2 on: baseSelector) printString equals: '*:nth-last-child(2)';
		assert: (CssPseudoClassSelector siblingOfTypeAt: 3 on: baseSelector) printString equals: '*:nth-of-type(3)';
		assert: (CssPseudoClassSelector siblingOfTypeFromLastAt: 2 on: baseSelector) printString equals: '*:nth-last-of-type(2)';
		assert: (CssPseudoClassSelector firstChildOn: baseSelector) printString equals: '*:first-child';
		assert: (CssPseudoClassSelector lastChildOn: baseSelector) printString equals: '*:last-child';
		assert: (CssPseudoClassSelector firstOfTypeOn: baseSelector) printString equals: '*:first-of-type';
		assert: (CssPseudoClassSelector lastOfTypeOn: baseSelector) printString equals: '*:last-of-type';
		assert: (CssPseudoClassSelector onlyChildOn: baseSelector) printString equals: '*:only-child';
		assert: (CssPseudoClassSelector onlyOfTypeOn: baseSelector) printString equals: '*:only-of-type';
		assert: (CssPseudoClassSelector emptyOn: baseSelector) printString equals: '*:empty'