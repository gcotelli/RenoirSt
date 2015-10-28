Instance Creation
horizontalOffset: horizontalOffsetLength verticalOffset: verticalOffsetLength blurRadius: blurRadiusLength color: color

	^ self
		withAll:
			{horizontalOffsetLength.
			verticalOffsetLength.
			blurRadiusLength.
			color}