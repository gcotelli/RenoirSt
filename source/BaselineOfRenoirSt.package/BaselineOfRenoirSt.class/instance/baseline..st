baselines
baseline: spec
	<baseline>
	spec
		for: #common
		do:
			[ spec
				package: 'RenoirSt';
				package: 'RenoirSt-HTML' with: [ spec requires: 'RenoirSt' ];
				package: 'RenoirSt-Tests' with: [ spec requires: 'RenoirSt' ];
				package: 'RenoirSt-HTML-Tests' with: [ spec requires: #('RenoirSt-HTML' 'RenoirSt-Tests') ];
				package: 'RenoirSt-UnitsCompatibility' with: [ spec requires: 'RenoirSt' ].
			spec for: #UnitsIsLoaded do: [ spec group: 'Deployment' with: #('RenoirSt' 'RenoirSt-HTML' 'RenoirSt-UnitsCompatibility') ].
			spec for: #UnitsIsAbsent do: [ spec group: 'Deployment' with: #('RenoirSt' 'RenoirSt-HTML') ].
			spec
				package: 'RenoirSt-Seaside' with: [ spec requires: 'Deployment' ];
				package: 'RenoirSt-Seaside-Tests' with: [ spec requires: 'RenoirSt-Seaside' ].
			spec
				group: 'Development' with: #('Deployment' 'RenoirSt-Tests' 'RenoirSt-HTML-Tests');
				group: 'Deployment-Seaside-Extensions' with: #('Deployment' 'RenoirSt-Seaside');
				group: 'Development-Seaside-Extensions' with: #('Development' 'Deployment-Seaside-Extensions' 'RenoirSt-Seaside-Tests');
				group: 'default' with: #('Deployment') ]