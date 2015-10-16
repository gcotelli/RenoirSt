*RenoirSt-Seaside
javascriptOn: aStream
	
	aStream nextPut: $".
	self property cssContentOn: aStream.
	aStream
		nextPut: $";
		nextPut: $:;
		nextPut: $".
	self value cssContentOn: aStream.
	aStream nextPut: $"