Instance Creation
horizontalOffset: horizontalOffsetLength verticalOffset: verticalOffsetLength blurRadius: blurRadiusLength spreadDistance: spreadDistanceLength

	^ self
		withAll:
			{horizontalOffsetLength.
			verticalOffsetLength.
			blurRadiusLength.
			spreadDistanceLength}