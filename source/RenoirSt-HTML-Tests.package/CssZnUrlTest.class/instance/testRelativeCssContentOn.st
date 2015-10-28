Tests
testRelativeCssContentOn

	| url |
	url := 'images/logo.png' asZnUrl.
	self assert: url isRelative.

	"By default URLs are considered relative to the site root"
	self assert: (String streamContents: [ :stream | url cssContentOn: stream ]) equals: 'url("/images/logo.png")'.

	"To make it relative to the style sheet send it relativeToStyleSheet"
	self assert: (String streamContents: [ :stream | url relativeToStyleSheet cssContentOn: stream ]) equals: 'url("images/logo.png")'