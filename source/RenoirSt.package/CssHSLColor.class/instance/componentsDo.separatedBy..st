private
componentsDo: aBlockClosure separatedBy: aSeparationBlock

	aBlockClosure value: hue.
	aSeparationBlock value.
	aBlockClosure value: saturation .
	aSeparationBlock value.
	aBlockClosure value: lightness .
	alphaChannel componentsDo: aBlockClosure separatedBy: aSeparationBlock
	