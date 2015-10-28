Instance Creation
svgFontLocatedAt: aUrl withId: aString

	^ self locatedAt: (CssSVGFontLocation at: aUrl withId: aString) withFormat: CssFontConstants svg