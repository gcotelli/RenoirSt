Tests
testCreationShortcutsForLengths
	
	self
		assert: 4 px asCssStringEquals: '4px';
		assert: 1 pc asCssStringEquals:  '1pc';
		assert: 3 in asCssStringEquals:  '3in';
		assert: 3 pt asCssStringEquals:  '3pt';
		assert: 0 em asCssStringEquals:  '0em';
		assert: 3 ex asCssStringEquals:  '3ex';
		assert: 3 cm asCssStringEquals:  '3cm';
		assert: 123 mm asCssStringEquals:  '123mm';
		assert: 1 ch asCssStringEquals:  '1ch';
		assert: 1 rem asCssStringEquals:  '1rem';
		assert: 1 vw asCssStringEquals:  '1vw';
		assert: 1 vh asCssStringEquals:  '1vh';
		assert: 1 vmin asCssStringEquals:  '1vmin';
		assert: 1 vmax asCssStringEquals:  '1vmax'.
	
	self 
		assert: 1 percent asCssStringEquals:  '1%'.
		
	self
		assert: 1.3 cm asCssStringEquals: '1.3cm';
		assert: 0.8 em asCssStringEquals:  '0.8em';
		assert: 1.1 in asCssStringEquals:  '1.1in';
		assert: 2.9 mm asCssStringEquals:  '2.9mm';
		assert: 0.1 pc asCssStringEquals:  '0.1pc'.