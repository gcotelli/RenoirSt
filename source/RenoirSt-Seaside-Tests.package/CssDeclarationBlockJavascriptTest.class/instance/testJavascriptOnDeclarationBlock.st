Tests
testJavascriptOnDeclarationBlock

	| declarationBlock |
	declarationBlock := CssDeclarationBlock new
		margin: 2 px;
		border: 1 cm;
		yourself.

	self
		assert: (String streamContents: [ :stream | declarationBlock javascriptOn: stream ])
		equals: '{"margin":"2px","border":"1cm"}'