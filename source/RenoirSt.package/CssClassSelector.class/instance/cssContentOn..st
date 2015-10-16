Printing
cssContentOn: aStream
	
	parentSelector cssContentOn: aStream.
	aStream
		nextPut: $.;
		nextPutAll: cssClass