*RenoirSt-HTML-Tests
testVendorPropertySupport

	| style |
	style := CssDeclarationBlock new.
	style vendorPropertyAt: 'border-end-color' put: CssSVGColors black.

	self
		assert: style printString
		equals:
			('{<n><t><1s>: <2s>;<n><t>-moz-<1s>: <2s>;<n><t>-webkit-<1s>: <2s>;<n><t>-o-<1s>: <2s>;<n><t>-ms-<1s>: <2s>;<n>}'
				expandMacrosWith: 'border-end-color'
				with: 'black')