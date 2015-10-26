versions
version150: spec
	<version: '1.5.0'>
	spec
		for: #common
		do:
			[ spec blessing: #stable.
			spec
				project: 'Seaside' with: [ spec versionString: #release3 ];
				baseline: 'RenoitSt'
					with:
						[ spec
						requires: 'Seaside';
						repository: 'github://gcotelli/RenoirSt:v1.?/source';
						loads: #('Development-Seaside-Extensions') ];
				import: 'RenoirSt' ]