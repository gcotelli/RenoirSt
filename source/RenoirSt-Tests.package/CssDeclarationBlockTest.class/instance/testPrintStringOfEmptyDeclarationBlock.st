Tests
testPrintStringOfEmptyDeclarationBlock

	self assert: CssDeclarationBlock new printString equals: ('{<1s>}' expandMacrosWith: OSPlatform current lineEnding)