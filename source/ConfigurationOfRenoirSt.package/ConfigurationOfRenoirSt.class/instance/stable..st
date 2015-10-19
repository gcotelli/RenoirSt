symbolic versions
stable: spec
	<symbolicVersion: #stable>
	spec
		for: #common
		do:
			[ spec blessing: #release.
			spec author: 'GabrielOmarCotelli'.
			spec
				baseline: 'RenoirSt'
				with: [ spec repository: 'github://gcotelli/RenoirSt:v1.5.0/source' ] ]