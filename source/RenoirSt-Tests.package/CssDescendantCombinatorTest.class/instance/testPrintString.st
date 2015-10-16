Tests
testPrintString

	| ancestor descendant |
	
	ancestor := CssUniversalSelector implicit class: 'custom'.
	descendant := CssTypeSelector ofType: 'div'.
	
	self assert: (CssDescendantCombinator between: ancestor and: descendant) printString equals: '.custom div'