n += 1;

if (instance_exists(objBobber) && !isDropped) {
	dir = point_direction(x, y, objBobber.x, objBobber.y);
	x = objBobber.x;
	y = objBobber.y;
} else {
	isDropped = true;
	if (place_meeting(x, y, objWaterZone)) {
		instance_create_depth(x, y, -1, objSplashBig);
		instance_destroy();
	} else {
		health -= 1;
		if (health <= 0) {
			health = 0;
			image_alpha -= 0.025;
			if (image_alpha <= 0) {
				instance_destroy();
			}
		}
	}
}

image_angle = dir + ((20 * (health / 100)) * sin(n / 2));;