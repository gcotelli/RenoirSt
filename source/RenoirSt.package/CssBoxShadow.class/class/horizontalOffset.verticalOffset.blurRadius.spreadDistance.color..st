Instance Creation
horizontalOffset: horizontalOffsetLength verticalOffset: verticalOffsetLength blurRadius: blurRadiusLength spreadDistance: spreadDistanceLength color: color

	^ self
		withAll:
			{horizontalOffsetLength.
			verticalOffsetLength.
			blurRadiusLength.
			spreadDistanceLength.
			color}