Configuring
declareFontFaceRuleWith: aDeclarationAction

	|  declarationBlock |
	declarationBlock := CssDeclarationBlock new.
	aDeclarationAction value: declarationBlock.
	self addStatement: (CssRuleSet selector: '@font-face' declarations: declarationBlock)