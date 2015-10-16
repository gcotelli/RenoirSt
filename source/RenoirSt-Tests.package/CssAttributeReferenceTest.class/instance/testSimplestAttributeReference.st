Tests
testSimplestAttributeReference

	| attributeReference |
	
	attributeReference := CssAttributeReference toAttributeNamed: 'title'.
	
	self assert: attributeReference printString equals: 'attr(title string)'