Instance Creation
attribute: anAttributeName of: aSelector includesSubstring: aValue
	^ self
		for: aSelector
		attribute: anAttributeName
		matchingCondition: (CssAttributeMatchingCondition condition: '*=' value: aValue)