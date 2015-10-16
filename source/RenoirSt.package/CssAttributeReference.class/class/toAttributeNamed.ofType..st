Instance Creation
toAttributeNamed: aString ofType: aCssTypeOrUnit
	^ self toAttributeNamed: aString ofType: aCssTypeOrUnit withFallbackSpecification: CssNoFallbackSpecified new