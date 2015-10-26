versions
version150: spec
	<version: '1.5.0'>
	spec
		for: #common
		do:
			[ spec blessing: #stable.
			spec
				project: 'Seaside'
					with:
						[ spec
						className: 'ConfigurationOfSeaside3';
						repository: 'http://smalltalkhub.com/mc/Pharo/MetaRepoForPharo40/main';
						versionString: #release3 ];
				baseline: 'RenoirSt'
					with: [ spec
						repository: 'github://gcotelli/RenoirSt:v1.6.0/source';
						loads: #('Development-Seaside-Extensions') ];
				import: 'RenoirSt';
				group: 'default' with: #('Seaside' 'RenoirSt') ]