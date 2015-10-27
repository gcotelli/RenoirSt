Tests
testTextLevelSemantics

	self
		assert: CssUniversalSelector implicit anchor printString equals: 'a';
		assert: CssUniversalSelector implicit emphasis printString equals: 'em';
		assert: CssUniversalSelector implicit strong printString equals: 'strong';
		assert: CssUniversalSelector implicit small printString equals: 'small'; 
		assert: CssUniversalSelector implicit cite printString equals: 'cite';
		assert: CssUniversalSelector implicit abbreviation printString equals: 'abbr';
		assert: CssUniversalSelector implicit code printString equals: 'code';
		assert: CssUniversalSelector implicit variable printString equals: 'var';
		assert: CssUniversalSelector implicit sample printString equals: 'samp';
		assert: CssUniversalSelector implicit keyboardInput printString equals: 'kbd';
		assert: CssUniversalSelector implicit subscript printString equals: 'sub';
		assert: CssUniversalSelector implicit superscript  printString equals: 'sup';
		assert: CssUniversalSelector implicit span printString equals: 'span'