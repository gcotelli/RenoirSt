Tests
testAttributeReferenceWithType

	| attributeReference |
	
	attributeReference := CssAttributeReference toAttributeNamed: 'length' ofType: CssLengthUnits fontSize.
	
	self assert: attributeReference printString equals: 'attr(length em)'