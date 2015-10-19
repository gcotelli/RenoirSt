baselines
baseline: spec
	<baseline>
	spec
		for: #common
		do:
			[ spec
				package: #RenoirSt;
				package: #'RenoirSt-HTML' with: [ spec requires: 'RenoirSt' ];
				package: #'RenoirSt-Tests' with: [ spec requires: 'RenoirSt' ];
				package: #'RenoirSt-HTML-Tests'
					with: [ spec requires: #('RenoirSt-HTML' 'RenoirSt-Tests') ];
				package: #'RenoirSt-UnitsCompatibility' with: [ spec requires: 'RenoirSt' ].
			spec
				for: #UnitsIsPresent
				do:
					[ spec
						group: 'Minimal' with: #('RenoirSt' 'RenoirSt-HTML' 'RenoirSt-UnitsCompatibility');
						group: 'default' with: #('Minimal' 'RenoirSt-Tests' 'RenoirSt-HTML-Tests');
						yourself ].
			spec
				for: #UnitsIsAbsent
				do:
					[ spec
						group: 'Minimal' with: #('RenoirSt' 'RenoirSt-HTML');
						group: 'default' with: #('Minimal' 'RenoirSt-Tests' 'RenoirSt-HTML-Tests');
						yourself ] ]