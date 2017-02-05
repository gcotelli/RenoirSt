private
setUpGroups: spec

	spec
		package: 'RenoirSt' with: [ spec requires: 'Buoy' ];
		package: 'RenoirSt-HTML' with: [ spec requires: 'RenoirSt' ];
		package: 'RenoirSt-Tests' with: [ spec requires: 'RenoirSt' ];
		package: 'RenoirSt-HTML-Tests' with: [ spec requires: #('RenoirSt-HTML' 'RenoirSt-Tests') ];
		package: 'RenoirSt-UnitsCompatibility' with: [ spec requires: 'RenoirSt' ].
		
	spec for: #UnitsIsLoaded do: [ spec group: 'Deployment' with: #('RenoirSt' 'RenoirSt-HTML' 'RenoirSt-UnitsCompatibility') ].
	spec for: #UnitsIsAbsent do: [ spec group: 'Deployment' with: #('RenoirSt' 'RenoirSt-HTML') ].
	spec group: 'Development' with: #('Deployment' 'RenoirSt-Tests' 'RenoirSt-HTML-Tests')