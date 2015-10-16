versions
version140: spec
	<version: '1.4.0' imports: #('1.4.0-baseline')>
	spec
		for: #common
		do: [ 
			spec blessing: #stable.
			spec
				description:
					'Version 1.4.0:
- Issue #44 Adapted configuration for Pharo 4
- Issue #42 Support for vendor prefixes
- Updated Tutorial'.
			spec author: 'GabrielOmarCotelli'.
			spec timestamp: '6/6/2014 00:00'.
			spec
				package: #RenoirSt with: 'RenoirSt-GabrielOmarCotelli.37';
				package: #'RenoirSt-HTML' with: 'RenoirSt-HTML-GabrielOmarCotelli.4';
				package: #'RenoirSt-HTML-Tests' with: 'RenoirSt-HTML-Tests-GabrielOmarCotelli.5';
				package: #'RenoirSt-Tests' with: 'RenoirSt-Tests-GabrielOmarCotelli.30';
				package: #'RenoirSt-UnitsCompatibility' with: 'RenoirSt-UnitsCompatibility-GabrielOmarCotelli.2' ]