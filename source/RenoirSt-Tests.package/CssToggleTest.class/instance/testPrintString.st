Tests
testPrintString

	self
		assert:
			(CssToggle
				cyclingOver:
					{CssConstants italic.
					CssConstants normal}) printString
		equals: 'toggle(italic, normal)'