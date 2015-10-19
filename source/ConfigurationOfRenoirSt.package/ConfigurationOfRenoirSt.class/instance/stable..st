symbolic versions
stable: spec
	<symbolicVersion: #stable>
	<version: '1.5.0'>
	spec
		for: #common
		do:
			[ spec
				baseline: 'RenoirSt'
					with: [ spec repository: 'github://gcotelli/RenoirSt:v1.5.0/source' ];
				import: 'RenoirSt' ]