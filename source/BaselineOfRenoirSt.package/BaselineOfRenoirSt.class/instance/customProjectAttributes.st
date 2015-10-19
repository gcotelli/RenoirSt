private
customProjectAttributes
	^ Array
		with:
			(Smalltalk globals
				at: #UnitValue
				ifPresent: [ :class | #UnitsIsLoaded ]
				ifAbsent: [ #UnitsIsAbsent ])