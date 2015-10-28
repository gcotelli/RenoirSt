color properties
opacity: alphaValue
	"Opacity can be tought of as a postprocessing operation.
	Conceptually, after the element (including its descendants) is rendered into an RGBA offscren image, the opacity
	setting specifies how to blend the offscreen rendering into the current composite rendering. CSS3"

	self propertyAt: 'opacity' put: alphaValue 