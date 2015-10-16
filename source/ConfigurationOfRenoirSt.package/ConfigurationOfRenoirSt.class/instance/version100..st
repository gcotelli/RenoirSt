versions
version100: spec
	<version: '1.0.0' imports: #('1.0.0-baseline' )>

	spec for: #'common' do: [
		spec blessing: #'stable'.
		spec description: 'First official release'.
		spec author: 'GabrielOmarCotelli'.
		spec timestamp: '3/10/2014 00:02'.
		spec 
			package: #RenoirSt with: 'RenoirSt-GabrielOmarCotelli.23';
			package: #'RenoirSt-HTML' with: 'RenoirSt-HTML-GabrielOmarCotelli.3';
			package: #'RenoirSt-HTML-Tests' with: 'RenoirSt-HTML-Tests-GabrielOmarCotelli.3';
			package: #'RenoirSt-Tests' with: 'RenoirSt-Tests-GabrielOmarCotelli.17'. ].
