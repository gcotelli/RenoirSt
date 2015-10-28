Tests
testGreaseStringOnDeclarationBlock

	| declarationBlock |
	declarationBlock := CssDeclarationBlock new
		margin: 2 px;
		border: 1 cm;
		yourself.

	self assert: declarationBlock greaseString equals: 'margin: 2px;border: 1cm;'