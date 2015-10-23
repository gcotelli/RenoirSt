symbolic versions
stableVersion: spec
	<version: '2.0.0'>
	spec
		for: #'pharo4.0.x'
			do: [ 
					spec
						blessing: #baseline;
						repository: 'github://gcotelli/RenoirSt:master/source';
						package: 'BaselineOfRenoirSt';
						postLoadDoIt: #installBaselineForPharo40 ];
		for: #'pharo5.0.x'
			do: [ 
					spec
						blessing: #baseline;
						repository: 'github://gcotelli/RenoirSt:master/source';
						package: 'BaselineOfRenoirSt';
						postLoadDoIt: #installBaselineForPharo50 ]