Tests
testTabularData

	self 
		assert: CssUniversalSelector implicit table printString equals: 'table';
		assert: CssUniversalSelector implicit tableBody printString equals: 'tbody';
		assert: CssUniversalSelector implicit tableHeader printString equals: 'thead';
		assert: CssUniversalSelector implicit tableFooter printString equals: 'tfoot';
		assert: CssUniversalSelector implicit tableRow printString equals: 'tr';
		assert: CssUniversalSelector implicit tableData printString equals: 'td';
		assert: CssUniversalSelector implicit tableHeaderCell printString equals: 'th'