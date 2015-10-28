Tests
testPrintInlined

	| style |
	style := CssDeclarationBlock new.
	style
		borderWidth: CssConstants thin;
		borderStyle: CssConstants dashed;
		borderRadius: 4 px.

	self
		assert: (String streamContents: [ :stream | style printInlinedOn: stream ])
		equals: 'border-width: thin;border-style: dashed;border-radius: 4px;'