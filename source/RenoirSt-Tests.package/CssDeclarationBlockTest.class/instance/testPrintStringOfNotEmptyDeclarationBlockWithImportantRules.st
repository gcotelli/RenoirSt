Tests
testPrintStringOfNotEmptyDeclarationBlockWithImportantRules
	self
		assert:
			(CssDeclarationBlock new
				color: 'red';
				beImportantDuring: [ :declarationBlock | declarationBlock margin: 1 px ];
				padding: 2 px;
				yourself) printString
		equals: '{<n><t>color: red;<n><t>margin: 1px !important;<n><t>padding: 2px;<n>}' expandMacros