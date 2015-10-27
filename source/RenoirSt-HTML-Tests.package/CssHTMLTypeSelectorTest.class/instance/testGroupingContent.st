Tests
testGroupingContent

	self 
		assert: CssUniversalSelector implicit paragraph printString equals: 'p';
		assert: CssUniversalSelector implicit horizontalRule printString equals: 'hr';
		assert: CssUniversalSelector implicit preformatted printString equals: 'pre';
		assert: CssUniversalSelector implicit blockquote printString equals: 'blockquote';
		assert: CssUniversalSelector implicit orderedList printString equals: 'ol';
		assert: CssUniversalSelector implicit unorderedList printString equals: 'ul';
		assert: CssUniversalSelector implicit listItem printString equals: 'li';
		assert: CssUniversalSelector implicit definitionList printString equals: 'dl';
		assert: CssUniversalSelector implicit definitionTerm printString equals: 'dt';
		assert: CssUniversalSelector implicit definitionDescription printString equals: 'dd';
		assert: CssUniversalSelector implicit figure printString equals: 'figure';
		assert: CssUniversalSelector implicit figureCaption printString equals: 'figcaption';
		assert: CssUniversalSelector implicit div printString equals: 'div';
		assert: CssUniversalSelector implicit main printString equals: 'main'