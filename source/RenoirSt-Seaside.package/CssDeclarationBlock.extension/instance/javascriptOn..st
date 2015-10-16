*RenoirSt-Seaside
javascriptOn: aStream

	aStream nextPut: ${.
	declarations do: [ :declaration | aStream javascript: declaration ] separatedBy: [ aStream nextPut: $, ].
	aStream nextPut: $}