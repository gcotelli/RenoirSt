Tests
testCreationShortcutsForResolutions

	self
		assert: 4 dpi asCssStringEquals: '4dpi';
		assert: 1 dpcm asCssStringEquals: '1dpcm';
		assert: 3 dppx asCssStringEquals: '3dppx'