Printing
cssContentOn: aStream
	comment notEmpty
		ifFalse: [ ^ self ].
	aStream nextPutAll: '/*'.
	comment cssContentOn: aStream.
	aStream
		nextPutAll: '*/';
		newLine