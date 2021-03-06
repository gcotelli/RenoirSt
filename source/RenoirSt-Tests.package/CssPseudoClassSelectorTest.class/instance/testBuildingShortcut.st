Tests
testBuildingShortcut
	
	| baseSelector |
	
	baseSelector := CssUniversalSelector explicit.
	
	self
		assert: (baseSelector lang: 'es-ar') printString equals: '*:lang(es-ar)';
		assert: baseSelector link printString equals: '*:link';
		assert: baseSelector visited printString equals: '*:visited';
		assert: baseSelector target printString equals: '*:target';
		assert: baseSelector enabled printString equals: '*:enabled';
		assert: baseSelector disabled printString equals: '*:disabled';
		assert: baseSelector checked printString equals: '*:checked';
		assert: baseSelector active printString equals: '*:active';
		assert: baseSelector hover printString equals: '*:hover';
		assert: baseSelector focus printString equals: '*:focus';
		assert: (baseSelector not: (baseSelector class: 'bad')) printString equals: '*:not(*.bad)'
