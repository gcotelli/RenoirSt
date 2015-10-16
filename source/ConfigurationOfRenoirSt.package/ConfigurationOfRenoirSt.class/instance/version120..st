versions
version120: spec
	<version: '1.2.0' imports: #('1.1.0-baseline')>
	spec
		for: #common
		do: [ 
			spec blessing: #stable.
			spec
				description:
					'Version 1.2.0:
- Issue #30 Added units for frequencies, time, angles, additional relative length and resolution units. Added support for calc(), attr() and toggle()
- Issue #32 Added many font related properties and values
- Issue #37 Added border-radius: and background-size: properties (Thanks Maximiliano Tabacman)
- Updated Tutorial'.
			spec author: 'GabrielOmarCotelli'.
			spec timestamp: '4/4/2014 00:00'.
			spec
				package: #RenoirSt with: 'RenoirSt-GabrielOmarCotelli.32';
				package: #'RenoirSt-HTML' with: 'RenoirSt-HTML-GabrielOmarCotelli.3';
				package: #'RenoirSt-HTML-Tests' with: 'RenoirSt-HTML-Tests-GabrielOmarCotelli.4';
				package: #'RenoirSt-Tests' with: 'RenoirSt-Tests-GabrielOmarCotelli.26';
				package: #'RenoirSt-UnitsCompatibility' with: 'RenoirSt-UnitsCompatibility-GabrielOmarCotelli.2' ]