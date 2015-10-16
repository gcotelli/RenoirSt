Instance Creation
not: aSelectorToNegate on: aBaseSelector 
	
	 ^self named: 'not' withArguments: { aSelectorToNegate } over: aBaseSelector 