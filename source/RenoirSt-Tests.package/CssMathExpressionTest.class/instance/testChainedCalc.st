Tests
testChainedCalc

	| mathExpression |

	mathExpression := (CssMathExpression on: 100 percent) / 3 - 2 * 1 em + 2 * 1 px.

	self assert: mathExpression printString equals: 'calc(100% / 3 - 2 * 1em + 2 * 1px)'