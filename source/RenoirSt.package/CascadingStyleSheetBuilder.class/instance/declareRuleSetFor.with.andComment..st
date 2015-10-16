Configuring
declareRuleSetFor: aSelectorBlock with: aDeclarationAction andComment: aComment

	| selector declarationBlock |
	selector := aSelectorBlock cull: CssUniversalSelector implicit.
	declarationBlock := CssDeclarationBlock new.
	aDeclarationAction value: declarationBlock.
	self addStatement: (CssRuleSet selector: selector declarations: declarationBlock comment: aComment)