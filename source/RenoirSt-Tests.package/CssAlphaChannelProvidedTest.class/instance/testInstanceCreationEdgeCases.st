Tests
testInstanceCreationEdgeCases
	
	self
		shouldnt: [ CssAlphaChannelProvided withValue: 0 ]
		raise: CssInstanceCreationFailed.
		
	self
		shouldnt: [ CssAlphaChannelProvided withValue: 1 ]
		raise: CssInstanceCreationFailed.
		
	self
		shouldnt: [ CssAlphaChannelProvided withValue: 0.0 ]
		raise: CssInstanceCreationFailed.
		
	self
		shouldnt: [ CssAlphaChannelProvided withValue: 1.0 ]
		raise: CssInstanceCreationFailed