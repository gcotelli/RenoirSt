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
- Issue #15 Added "Seaside" group with useful extensions
- Updated Tutorial'.
			spec author: 'GabrielOmarCotelli'.
			spec timestamp: '3/17/2014 00:00'.
			spec
				package: #'RenoirSt-Seaside' with: 'RenoirSt-Seaside-GabrielOmarCotelli.1';
				package: #'RenoirSt-Seaside-Tests' with: 'RenoirSt-Seaside-Tests-GabrielOmarCotelli.1';
				project: 'RenoirSt Minimal' with: [ spec versionString: '1.1.0' ];
				project: 'RenoirSt Full' with: [ spec versionString: '1.1.0' ];
				project: 'Seaside' with: [ spec versionString: '3.1.0' ] ]