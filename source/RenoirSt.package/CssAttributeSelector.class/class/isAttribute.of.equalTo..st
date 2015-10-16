Instance Creation
isAttribute: anAttributeName of: aSelector equalTo: aValue
	
	^ self
		for: aSelector
		attribute: anAttributeName
		matchingCondition: (CssAttributeMatchingCondition condition: '=' value: aValue)