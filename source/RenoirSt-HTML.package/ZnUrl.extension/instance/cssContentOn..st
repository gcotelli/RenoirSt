*RenoirSt-HTML
cssContentOn: aStream

	aStream nextPutAll: 'url("'.
	self printOn: aStream.
	aStream nextPutAll: '")'