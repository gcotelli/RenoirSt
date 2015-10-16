Tests
testCreationShortcutsForTimes
	
	self
		assert: 1 s asCssStringEquals: '1s';
		assert: 1 ms asCssStringEquals: '1ms'.
	
	self
		assert: 1.5 s asCssStringEquals: '1.5s';
		assert: 1.5 ms asCssStringEquals: '1.5ms'.