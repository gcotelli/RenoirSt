Tests
testBuildingShortcut

	self
		assert: (CssUniversalSelector implicit class: 'pastoral') printString equals: '.pastoral';
		assert: (CssUniversalSelector explicit class: #pastoral) printString equals: '*.pastoral'