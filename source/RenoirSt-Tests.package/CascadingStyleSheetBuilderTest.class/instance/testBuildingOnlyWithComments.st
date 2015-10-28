Tests
testBuildingOnlyWithComments
	
	| builder |
	builder := CascadingStyleSheetBuilder new.
	builder comment: 'Example CSS'.
	
	self
		assert: builder build printString
		equals: '/*Example CSS*/<n>' expandMacros