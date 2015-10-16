versions
version110: spec
	<version: '1.1.0' imports: #('1.1.0-baseline')>
	spec
		for: #common
		do: [ 
			spec blessing: #stable.
			spec
				description:
					'Version 1.1.0:
- Issue #17 Added support for comments
- Issue #2 Improved formatting of rules inside media query
- Issue #7 Improved formula notation support in selectors
- Issue #21 Compatibility with Units package
- Issue #23 Fixed typo: Lenght must be Length
- Updated Tutorial'.
			spec author: 'GabrielOmarCotelli'.
			spec timestamp: '3/17/2014 00:00'.
			spec
				package: #RenoirSt with: 'RenoirSt-GabrielOmarCotelli.28';
				package: #'RenoirSt-HTML' with: 'RenoirSt-HTML-GabrielOmarCotelli.3';
				package: #'RenoirSt-HTML-Tests' with: 'RenoirSt-HTML-Tests-GabrielOmarCotelli.4';
				package: #'RenoirSt-Tests' with: 'RenoirSt-Tests-GabrielOmarCotelli.22';
				package: #'RenoirSt-UnitsCompatibility' with: 'RenoirSt-UnitsCompatibility-GabrielOmarCotelli.1' ]