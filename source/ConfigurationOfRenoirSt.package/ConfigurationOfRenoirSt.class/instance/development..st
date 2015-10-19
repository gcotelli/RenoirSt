symbolic versions
development: spec
	<symbolicVersion: #development>
	spec
		for: #common
		do:
			[ spec
				baseline: 'RenoirSt'
				with: [ spec repository: 'github://gcotelli/RenoirSt:master' ] ]