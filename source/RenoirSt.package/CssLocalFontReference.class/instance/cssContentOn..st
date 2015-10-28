Printing
cssContentOn: aStream

	aStream nextPutAll: 'local('.
	fontName cssContentOn: aStream.
	aStream nextPutAll: ')'