Printing
cssContentOn: aWriteStream

	aWriteStream nextPutAll: self functionName.
	aWriteStream nextPut: $(.
	self shape cssContentOn: aWriteStream.
	self colorStops
		do: [ :colorStop | colorStop cssContentOn: aWriteStream ]
		separatedBy: [ 
			aWriteStream
				nextPut: $,;
				space ].
	aWriteStream nextPut: $)