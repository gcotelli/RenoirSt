Tests
testPrintStringOfSimpleMediaQuery

	| styleSheet mediaQuery |
	styleSheet := CascadingStyleSheet withAll: #().
	mediaQuery := CssMediaQueryRule ofType: CssMediaQueryConstants screen enabling: styleSheet.

	self
		assert: mediaQuery printString
		equals:
			('@media screen<1s>{<1s><2s><1s>}' expandMacrosWith: OSPlatform current lineEnding with: Character tab asString)