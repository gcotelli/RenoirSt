private
assert: aBlockClosure rendersProperty: aPropertyName withValue: anExpectedValue

	| style |
	style := CssDeclarationBlock new.
	aBlockClosure value: style.

	self assert: style printString equals: ('{<n><t><1s>: <2s>;<n>}' expandMacrosWith: aPropertyName with: anExpectedValue)