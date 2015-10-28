Tests
testPrintStringWithExpressions

	| styleSheet mediaQuery |
	styleSheet := CascadingStyleSheet withAll: #().
	mediaQuery := CssMediaQueryRule
		ofType: CssMediaQueryConstants screen
		conforming:
			{(CssMediaQueryExpression forFeatureNamed: 'color').
			(CssMediaQueryExpression forFeatureNamed: 'orientation' withValue: 'landscape')}
		enabling: styleSheet.

	self assert: mediaQuery printString equals: '@media screen and (color) and (orientation: landscape)<n>{<n><t><n>}' expandMacros