Printing
cssContentOn: aStream
	
	statements
		do: [ :statement | statement cssContentOn: aStream ]
		separatedBy: [ 
			aStream
				newLine;
				newLine ]