Printing
cssContentOn: aStream

	aStream nextPut: $(.
	mediaFeature cssContentOn: aStream.
	values
		do: [ :value | 
			aStream
				nextPut: $:;
				space.
			value cssContentOn: aStream ].
	aStream nextPut: $)