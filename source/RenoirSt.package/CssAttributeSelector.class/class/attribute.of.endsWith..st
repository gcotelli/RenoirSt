Instance Creation
attribute: anAttributeName of: aSelector endsWith: aValue
	^ self
		for: aSelector
		attribute: anAttributeName
		matchingCondition: (CssAttributeMatchingCondition condition: '$=' value: aValue)