Tests
testAttributeReferenceWithTypeAndFallback

	| attributeReference |
	
	attributeReference := CssAttributeReference toAttributeNamed: 'length' ofType: CssLengthUnits fontSize withFallback: 10 px.
	
	self assert: attributeReference printString equals: 'attr(length em, 10px)'