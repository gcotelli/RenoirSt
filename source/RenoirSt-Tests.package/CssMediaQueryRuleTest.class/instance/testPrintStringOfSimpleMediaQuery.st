Tests
testPrintStringOfSimpleMediaQuery

	| styleSheet mediaQuery |
	styleSheet := CascadingStyleSheet withAll: #().
	mediaQuery := CssMediaQueryRule ofType: CssMediaQueryConstants screen enabling: styleSheet.

	self assert: mediaQuery printString equals: '@media screen<n>{<n><t><n>}' expandMacros