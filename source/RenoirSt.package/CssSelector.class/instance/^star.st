building-combinators
* aSelector

	| ancestor |
	ancestor := CssDescendantCombinator between: self and: CssUniversalSelector explicit.
	^CssDescendantCombinator between: ancestor and: aSelector 