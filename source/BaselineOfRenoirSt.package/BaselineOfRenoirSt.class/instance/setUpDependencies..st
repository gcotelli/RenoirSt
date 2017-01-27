private
setUpDependencies: spec

	spec
		baseline: 'Buoy'
			with: [ spec
				repository: 'github://ba-st/Buoy:master';
				loads: #('Deployment') ];
		import: 'Buoy'