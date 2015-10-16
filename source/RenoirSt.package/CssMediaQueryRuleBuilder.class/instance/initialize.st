initialize-release
initialize

	super initialize.
	styleSheet := CascadingStyleSheet withAll: #().
	expressions := OrderedCollection new.
	mediaType := 'all'