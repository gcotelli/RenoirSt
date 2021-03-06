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
- Updated dependencies to Seaside 3.1.1 and RenoirSt 1.4.0'.
			spec author: 'GabrielOmarCotelli'.
			spec timestamp: '06/06/2014 00:00'.
			spec
				package: #'RenoirSt-Seaside' with: 'RenoirSt-Seaside-GabrielOmarCotelli.1';
				package: #'RenoirSt-Seaside-Tests' with: 'RenoirSt-Seaside-Tests-GabrielOmarCotelli.1';
				project: 'RenoirSt Minimal' with: [ spec versionString: '1.4.0' ];
				project: 'RenoirSt Full' with: [ spec versionString: '1.4.0' ];
				project: 'Seaside' with: [ spec versionString: #'release3' ] ]