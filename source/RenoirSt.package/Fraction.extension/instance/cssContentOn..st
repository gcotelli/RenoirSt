*RenoirSt
cssContentOn: aStream

	self numerator cssContentOn: aStream.
	aStream nextPut: $/.
	self denominator cssContentOn: aStream 