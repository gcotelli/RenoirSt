Tests
testPrintStringOfLangPseudoClass
	
	| baseSelector |
	
	baseSelector := CssUniversalSelector explicit.
	
	self assert: (CssPseudoClassSelector language: 'es-ar' on: baseSelector) printString equals: '*:lang(es-ar)'