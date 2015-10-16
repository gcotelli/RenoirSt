Instance Creation
circular: aRadiusOrKeyword at: aPosition fading: colorStops 
	
	^self shape: (CssGradientComponent on: { aRadiusOrKeyword . 'circle'. 'at'. aPosition }) fading: colorStops