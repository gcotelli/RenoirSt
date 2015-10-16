Instance Creation
attribute: anAttributeName of: aSelector beginsWith: aValue
	^ self
		for: aSelector
		attribute: anAttributeName
		matchingCondition: (CssAttributeMatchingCondition condition: '^=' value: aValue)