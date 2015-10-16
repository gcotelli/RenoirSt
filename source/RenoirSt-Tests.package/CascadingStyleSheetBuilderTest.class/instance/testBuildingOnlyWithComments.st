Tests
testBuildingOnlyWithComments
	
	| builder |
	builder := CascadingStyleSheetBuilder new.
	builder comment: 'Example CSS'.
	
	self
		assert: builder build printString
		equals: ('/*Example CSS*/<1s>' expandMacrosWith: OSPlatform current lineEnding)