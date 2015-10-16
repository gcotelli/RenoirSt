baselines
baseline100: spec
	<version: '1.0.0-baseline'>
	spec
		for: #common
		do: [ 
			spec blessing: #baseline.
			spec repository: 'http://smalltalkhub.com/mc/gcotelli/RenoirSt/main/'.
			spec
				package: #RenoirSt;
				package: #'RenoirSt-HTML' with: [ spec requires: 'RenoirSt' ];
				package: #'RenoirSt-HTML-Tests' with: [ spec requires: 'RenoirSt-HTML' ];
				package: #'RenoirSt-Tests' with: [ spec requires: 'RenoirSt' ].
			spec
				group: 'Minimal' with: #('RenoirSt' 'RenoirSt-HTML');
				group: 'default' with: #('Minimal' 'RenoirSt-Tests' 'RenoirSt-HTML-Tests') ]