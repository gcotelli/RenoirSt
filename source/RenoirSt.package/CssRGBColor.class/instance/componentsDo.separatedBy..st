private
componentsDo: aBlockClosure separatedBy: aSeparationBlock
	
	aBlockClosure value: redComponent.
	aSeparationBlock value.
	aBlockClosure value: greenComponent.
	aSeparationBlock value.
	aBlockClosure value: blueComponent.
	alphaChannel componentsDo: aBlockClosure separatedBy: aSeparationBlock 