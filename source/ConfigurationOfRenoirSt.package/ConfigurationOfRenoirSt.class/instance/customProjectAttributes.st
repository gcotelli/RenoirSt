accessing
customProjectAttributes

	Smalltalk at: #UnitValue ifPresent: [ :class | ^ #(#'UnitsIsLoaded') ].
	^ #( #'UnitsIsAbsent')