Instance Creation
identifiedBy: anIdentifier

	self assertNotEmpty: anIdentifier.
	^self new initializeIdentifiedBy: anIdentifier