baselines
baseline: spec

	<baseline>
	spec
		for: #common
		do: [ self setUpDependencies: spec.
			self setUpGroups: spec.
			self setUpSeasideGroups: spec.
			spec group: 'default' with: #('Deployment') ]