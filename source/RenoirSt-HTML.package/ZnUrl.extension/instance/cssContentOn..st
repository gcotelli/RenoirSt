*RenoirSt-HTML
cssContentOn: aStream
	
	aStream nextPutAll: 'url("'.
	self isAbsolute
		ifTrue: [ self printOn: aStream ]
		ifFalse: [ segments do: [ :segment | aStream nextPutAll: segment ] separatedBy: [ aStream nextPut: $/ ] ].
	aStream nextPutAll: '")'