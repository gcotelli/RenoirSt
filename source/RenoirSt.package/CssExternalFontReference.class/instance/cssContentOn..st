Printing
cssContentOn: aStream

	url cssContentOn: aStream.
	format notEmpty
		ifTrue: [ aStream
				space;
				nextPutAll: 'format(';
				nextPut: $".
			format cssContentOn: aStream.
			aStream
				nextPut: $";
				nextPut: $) ]