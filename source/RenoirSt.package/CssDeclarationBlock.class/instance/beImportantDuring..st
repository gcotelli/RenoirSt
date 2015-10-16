Configuring
beImportantDuring: aBlockClosure
	
	| previousPolicy |
	previousPolicy := rulePrecedencePolicy.
	rulePrecedencePolicy := CssImportantRulePrecedencePoliciy new.
	[ aBlockClosure value: self ]
		ensure: [ rulePrecedencePolicy := previousPolicy ]