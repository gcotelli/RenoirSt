Instance Creation
hue: aHueValueInDegrees saturation: aSaturationPercentage lightness: aLightnessPercentage alpha: aNumber
	
	^ self
		hue: aHueValueInDegrees
		saturation: aSaturationPercentage
		lightness: aLightnessPercentage
		alphaChannel: (CssAlphaChannelProvided withValue: aNumber)