private
setUpSeasideGroups: spec

	spec
		package: 'RenoirSt-Seaside' with: [ spec requires: 'Deployment' ];
		package: 'RenoirSt-Seaside-Tests' with: [ spec requires: 'RenoirSt-Seaside' ].
	spec
		group: 'Deployment-Seaside-Extensions' with: #('Deployment' 'RenoirSt-Seaside');
		group: 'Development-Seaside-Extensions' with: #('Development' 'Deployment-Seaside-Extensions' 'RenoirSt-Seaside-Tests')