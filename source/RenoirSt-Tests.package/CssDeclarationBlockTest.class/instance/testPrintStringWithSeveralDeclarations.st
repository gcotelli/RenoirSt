Tests
testPrintStringWithSeveralDeclarations

	| declarationBlock |
	declarationBlock := CssDeclarationBlock new.
	declarationBlock
		color: 'red';
		margin: {1 px. 3 pc. 4 pt. 50 percent}.

	self assert: declarationBlock printString equals: ('{<n><t>color: red;<n><t>margin: 1px 3pc 4pt 50<1s>;<n>}' expandMacrosWith: '%')