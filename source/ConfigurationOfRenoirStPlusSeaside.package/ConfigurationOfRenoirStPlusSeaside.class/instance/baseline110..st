versions
baseline110: spec
	<version: '1.1.0-baseline'>
	spec
		for: #common
		do: [ 
			spec blessing: #baseline.
			spec repository: 'http://smalltalkhub.com/mc/gcotelli/RenoirSt/main/'.
			spec
				project: 'Seaside'
					with: [ 
							spec
								className: 'ConfigurationOfSeaside3';
								repository: 'http://smalltalkhub.com/mc/Pharo/MetaRepoForPharo30/main';
								loads: #('Javascript');
								versionString: #stable ];
				project: 'RenoirSt Minimal'
					with: [ 
							spec
								className: 'ConfigurationOfRenoirSt';
								repository: 'http://smalltalkhub.com/mc/gcotelli/RenoirSt/main/';
								loads: 'Minimal';
								versionString: #stable ];
				project: 'RenoirSt Full'
					with: [ 
							spec
								className: 'ConfigurationOfRenoirSt';
								repository: 'http://smalltalkhub.com/mc/gcotelli/RenoirSt/main/';
								versionString: #stable ].
			spec package: #'RenoirSt-Seaside' with: [ spec requires: #('RenoirSt Minimal' 'Seaside') ].
			spec package: #'RenoirSt-Seaside-Tests' with: [ spec requires: #('RenoirSt-Seaside' 'RenoirSt Full') ].
			spec group: 'Minimal' with: #('RenoirSt-Seaside').
			spec group: 'default' with: #('Minimal' 'RenoirSt-Seaside-Tests') ]