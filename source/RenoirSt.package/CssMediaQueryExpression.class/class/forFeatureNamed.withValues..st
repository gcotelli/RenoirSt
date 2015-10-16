private
forFeatureNamed: aString withValues: aCollection

	self assertNotEmpty: aString.
	^ self new initializeForFeatureNamed: aString withValues: aCollection