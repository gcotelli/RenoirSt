Printing
cssContentOn: aStream

	selector cssContentOn: aStream.

	aStream
		nextPut: $:;
		nextPutAll: pseudoClassName.

	arguments
		do: [ :argument | 
			aStream nextPut: $(.
			argument cssContentOn: aStream.
			aStream nextPut: $) ]