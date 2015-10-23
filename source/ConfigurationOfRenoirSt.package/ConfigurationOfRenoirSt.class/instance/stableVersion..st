symbolic versions
stableVersion: spec

	<version: '0.0.0'>
	spec
		for: #common
		do:
			[ spec
				blessing: #development;
				repository: 'github://gcotelli/RenoirSt:master/source';
				package: 'BaselineOfRenoirSt';
				postLoadDoIt: #installBaselineForPharo50 ]