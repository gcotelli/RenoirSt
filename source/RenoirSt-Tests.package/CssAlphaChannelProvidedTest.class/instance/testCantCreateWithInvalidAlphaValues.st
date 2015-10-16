Tests
testCantCreateWithInvalidAlphaValues
	
	self
		should: [ CssAlphaChannelProvided withValue: -1 ]
		raise: CssInstanceCreationFailed
		withExceptionDo: [ :error | self assert: error messageText equals: 'The alpha value (-1) must be between zero and one.' ].
		
	self
		should: [ CssAlphaChannelProvided withValue: 2 ]
		raise: CssInstanceCreationFailed
		withExceptionDo: [ :error | self assert: error messageText equals: 'The alpha value (2) must be between zero and one.' ].
		
	self
		should: [ CssAlphaChannelProvided withValue: 0.0 predecessor ]
		raise: CssInstanceCreationFailed.
		
	self
		should: [ CssAlphaChannelProvided withValue: 1.0 successor ]
		raise: CssInstanceCreationFailed