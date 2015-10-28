Printing
cssContentOn: aStream

	components
		do: [ :shadow | shadow cssContentOn: aStream ]
		separatedBy: [ aStream
				nextPut: $,;
				space ]