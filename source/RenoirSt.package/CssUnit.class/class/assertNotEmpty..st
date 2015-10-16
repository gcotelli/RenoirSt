Preconditions
assertNotEmpty: aString
	
	aString isEmpty
		ifTrue: [ CssInstanceCreationFailed signal: 'A unit identifier can''t be empty' ]