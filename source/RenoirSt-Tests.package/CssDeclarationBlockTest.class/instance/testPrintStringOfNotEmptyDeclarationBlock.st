Tests
testPrintStringOfNotEmptyDeclarationBlock

	self
		assert:
			(CssDeclarationBlock new
				color: 'red';
				yourself) printString
		equals: '{<n><t>color: red;<n>}' expandMacros