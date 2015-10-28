Printing
cssContentOn: aStream

	aStream
		nextPutAll: ((String streamContents: [ :stream | url cssContentOn: stream ]) copyReplaceAll: '")' with: ('#<1s>")' expandMacrosWith: id))