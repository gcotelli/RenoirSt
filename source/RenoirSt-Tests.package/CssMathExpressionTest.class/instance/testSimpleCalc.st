Tests
testSimpleCalc

	| mathExpression |

	mathExpression := (CssMathExpression on: 50 percent) - 2 em.

	self assert: mathExpression printString equals: 'calc(50% - 2em)'