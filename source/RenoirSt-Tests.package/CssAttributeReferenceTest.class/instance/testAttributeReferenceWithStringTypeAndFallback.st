Tests
testAttributeReferenceWithStringTypeAndFallback

	| attributeReference |
	
	attributeReference := CssAttributeReference toStringAttributeNamed: 'title' withFallback: 'Missing Title'.
	
	self assert: attributeReference printString equals: 'attr(title string, "Missing Title")'