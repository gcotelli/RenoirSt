Tests
testComplexCaseBuilding

	| builder |
	builder := CssMediaQueryRuleBuilder new.
	builder
		type: CssMediaQueryConstants print;
		width: 300 px;
		minWidth: 100 px;
		maxWidth: 500 px;
		height: 300 px;
		minHeight: 100 px;
		maxHeight: 500 px;
		deviceHeight: 100 px;
		minDeviceHeight: 100 px;
		maxDeviceHeight: 100 px;
		deviceWidth: 100 px;
		minDeviceWidth: 10 px;
		maxDeviceWidth: 400 px;
		orientation: CssMediaQueryConstants landscape;
		aspectRatio: 16 / 9;
		minAspecRatio: 16 / 9;
		maxAspectRatio: 16 / 9;
		color: 2;
		minColor: 2;
		maxColor: 2;
		colorIndex: 1;
		minColorIndex: 1;
		maxColorIndex: 34;
		monochrome: 2;
		minMonochrome: 1;
		maxMonochrome: 3;
		resolution: 72 dpi;
		scan: CssMediaQueryConstants progressive;
		grid: 1.
	
	self
		assert: builder build printString
		equals:
			('@media print and (width: 300px) and (min-width: 100px) and (max-width: 500px) and (height: 300px) and (min-height: 100px) and (max-height: 500px) and (device-height: 100px) and (min-device-height: 100px) and (max-device-height: 100px) and (device-width: 100px) and (min-device-width: 10px) and (max-device-width: 400px) and (orientation: landscape) and (aspect-ratio: 16/9) and (min-aspect-ratio: 16/9) and (max-aspect-ratio: 16/9) and (color: 2) and (min-color: 2) and (max-color: 2) and (color-index: 1) and (min-color-index: 1) and (max-color-index: 34) and (monochrome: 2) and (min-monochrome: 1) and (max-monochrome: 3) and (resolution: 72dpi) and (scan: progressive) and (grid: 1)<1s>{<1s><2s><1s>}'
				expandMacrosWith: OSPlatform current lineEnding
				with: Character tab asString)