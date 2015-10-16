Instance Creation
toAttributeNamed: aString ofType: aCssUnitOrType withFallback: aCssValue

	^ self
		toAttributeNamed: aString
		ofType: aCssUnitOrType
		withFallbackSpecification: (CssFallbackSpecified withValue: aCssValue)