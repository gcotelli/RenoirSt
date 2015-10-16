Printing
cssContentOn: aStream

	aStream nextPut: ${.
	aStream newLine.
	declarations
		do: [ :declaration | 
			aStream tab.
			declaration cssContentOn: aStream.
			aStream newLine ].
	aStream nextPut: $}