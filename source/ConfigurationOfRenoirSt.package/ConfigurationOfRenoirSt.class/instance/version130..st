versions
version130: spec
	<version: '1.3.0' imports: #('1.1.0-baseline')>
	spec
		for: #common
		do: [ 
			spec blessing: #stable.
			spec
				description:
					'Version 1.3.0:
- Issue #27 Add missing background and border properties and constants
- Issue #31 Added missing Text Decoration properties and constants
- Issue #35 Reviewed Code Critics
- Issue #39 Support for stand-alone comments
- Issue #40 Gradient Support
- Updated Tutorial'.
			spec author: 'GabrielOmarCotelli'.
			spec timestamp: '4/14/2014 00:00'.
			spec
				package: #RenoirSt with: 'RenoirSt-GabrielOmarCotelli.37';
				package: #'RenoirSt-HTML' with: 'RenoirSt-HTML-GabrielOmarCotelli.3';
				package: #'RenoirSt-HTML-Tests' with: 'RenoirSt-HTML-Tests-GabrielOmarCotelli.4';
				package: #'RenoirSt-Tests' with: 'RenoirSt-Tests-GabrielOmarCotelli.30';
				package: #'RenoirSt-UnitsCompatibility' with: 'RenoirSt-UnitsCompatibility-GabrielOmarCotelli.2' ]