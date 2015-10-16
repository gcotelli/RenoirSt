private
toAttributeNamed: aString ofType: aCssTypeOrUnit withFallbackSpecification: aCssFallback
	
	^self new initializeWithAttributeNamed: aString withType: aCssTypeOrUnit withFallback: aCssFallback