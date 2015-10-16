Instance Creation
attribute: anAttributeName of: aSelector includes: aValue
	
	^self
		for: aSelector
		attribute: anAttributeName
		matchingCondition: (CssAttributeMatchingCondition condition: '~=' value: aValue)