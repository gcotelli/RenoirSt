Tests
testBuildingShortcutOfStructuralPseudoClasses
	
	| baseSelector |
	
	baseSelector := CssUniversalSelector explicit.
	
	self
		assert: baseSelector root printString equals: '*:root';
		assert: (baseSelector childAt: 2) printString equals: '*:nth-child(2)';
		assert: (baseSelector childFromLastAt: 2) printString equals: '*:nth-last-child(2)';
		assert: (baseSelector siblingOfTypeAt: 3) printString equals: '*:nth-of-type(3)';
		assert: (baseSelector siblingOfTypeFromLastAt: 2) printString equals: '*:nth-last-of-type(2)';
		assert: baseSelector firstChild printString equals: '*:first-child';
		assert: baseSelector lastChild printString equals: '*:last-child';
		assert: baseSelector firstOfType printString equals: '*:first-of-type';
		assert: baseSelector lastOfType printString equals: '*:last-of-type';
		assert: baseSelector onlyChild printString equals: '*:only-child';
		assert: baseSelector onlyOfType printString equals: '*:only-of-type';
		assert: baseSelector empty printString equals: '*:empty'