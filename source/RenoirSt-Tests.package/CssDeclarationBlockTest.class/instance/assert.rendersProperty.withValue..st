private
assert: aBlockClosure rendersProperty: aPropertyName withValue: anExpectedValue
	
	| style |
	style := CssDeclarationBlock new.
	aBlockClosure value: style.
	
	self
		assert: style printString
		equals:
			('{<1s><2s><3s>: <4s>;<1s>}'
				expandMacrosWith: OSPlatform current lineEnding
				with: Character tab asString
				with: aPropertyName
				with: anExpectedValue)