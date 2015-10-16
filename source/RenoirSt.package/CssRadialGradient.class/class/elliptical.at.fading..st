Instance Creation
elliptical: aCssValue at: aPosition fading: colorStops
	
	^ self
		shape:
			(CssGradientComponent
				on:
					{aCssValue.
					'ellipse'.
					'at'.
					aPosition})
		fading: colorStops