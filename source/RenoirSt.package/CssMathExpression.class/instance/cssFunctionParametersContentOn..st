private
cssFunctionParametersContentOn: aWriteStream
	
	"There's always one operand more than operations, the first one."
	operands first cssContentOn: aWriteStream.
	operands copyWithoutFirst
		doWithIndex: [ :operand :index | 
			aWriteStream space.
			(operators at: index) cssContentOn: aWriteStream.
			aWriteStream space.
			operand cssContentOn: aWriteStream ]