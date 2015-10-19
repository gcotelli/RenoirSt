versions
version140: spec
	<version: '1.4.0'>
	spec
		for: #common
		do:
			[ spec blessing: #release.
			spec author: 'GabrielOmarCotelli'.
			spec
				baseline: 'RenoirSt'
				with: [ spec repository: 'github://gcotelli/RenoirSt:v1.4.0/source' ] ]