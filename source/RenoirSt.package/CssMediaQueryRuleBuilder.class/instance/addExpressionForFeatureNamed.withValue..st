private
addExpressionForFeatureNamed: aFeatureName withValue: aValue

	expressions add: (CssMediaQueryExpression forFeatureNamed: aFeatureName withValue: aValue)