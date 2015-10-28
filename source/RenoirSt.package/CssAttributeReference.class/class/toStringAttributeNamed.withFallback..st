Instance Creation
toStringAttributeNamed: aString withFallback: aFallbackString

	^ self
		toAttributeNamed: aString
		ofType: 'string'
		withFallbackSpecification: (CssFallbackSpecified withValue: ('"<1s>"' expandMacrosWith: aFallbackString))