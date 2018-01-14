if (isReeling) {
	xTarget = objPlayer.rodX;
	yTarget = objPlayer.rodY;
	if (place_meeting(x, y, objWaterZone) && didSplash && !didSplashOut) {
		instance_create_depth(x, y, -1, objSplashBig);
		didSplashOut = true;
	}
	if (distance_to_point(xTarget, yTarget) <= 16 && !objPlayer.hasFish) {
		objPlayer.isUsingRod = false;
		instance_destroy();	
	}
} else {
	if (distance_to_point(xTarget, yTarget) <= 2 && !didSplash) {
		if (place_meeting(xTarget, yTarget, objWaterZone)) {
			didSplash = true;
			instance_create_depth(xTarget, yTarget, -1, objSplashBig);
		} else {
			isReeling = true;
			jolt_rod();
		}
	}
	if (distance_to_point(objPlayer.rodX, objPlayer.rodY) > 64) {
		isReeling = true;
	}
}

x += (xTarget - x) / 8;
y += (yTarget - y) / 8;