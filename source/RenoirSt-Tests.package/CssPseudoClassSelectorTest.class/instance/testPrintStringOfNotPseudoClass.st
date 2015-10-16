Tests
testPrintStringOfNotPseudoClass
	
	| baseSelector selectorToNegate |
	
	baseSelector := CssUniversalSelector explicit.
	selectorToNegate := CssIdSelector for: #id over: baseSelector.
	
	self assert: (CssPseudoClassSelector not: selectorToNegate on: baseSelector) printString equals: '*:not(*#id)'