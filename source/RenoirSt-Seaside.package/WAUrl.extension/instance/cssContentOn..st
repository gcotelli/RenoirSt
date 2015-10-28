*RenoirSt-Seaside
cssContentOn: aStream

	aStream nextPutAll: 'url("'.
	host isNil
		ifTrue: [ aStream nextPut: $/.
			self path do: [ :segment | aStream nextPutAll: segment ] separatedBy: [ aStream nextPut: $/ ] ]
		ifFalse: [ self printOn: aStream ].
	aStream nextPutAll: '")'