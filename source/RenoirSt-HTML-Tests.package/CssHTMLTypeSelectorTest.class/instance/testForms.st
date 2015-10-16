Tests
testForms

	self
		assert: CssUniversalSelector implicit form printString equals: 'form';
		assert: CssUniversalSelector implicit label printString equals: 'label';
		assert: CssUniversalSelector implicit input printString equals: 'input';
		assert: CssUniversalSelector implicit button printString equals: 'button';
		assert: CssUniversalSelector implicit select printString equals: 'select';
		assert: CssUniversalSelector implicit optionGroup printString equals: 'optgroup';
		assert: CssUniversalSelector implicit option printString equals: 'option';
		assert: CssUniversalSelector implicit textArea printString equals: 'textarea';
		assert: CssUniversalSelector implicit fieldSet printString equals: 'fieldset';
		assert: CssUniversalSelector implicit legend printString equals: 'legend'