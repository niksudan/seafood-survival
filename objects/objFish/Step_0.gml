n += 1;

if (instance_exists(objBobber) && !isDropped) {
	dir = point_direction(x, y, objBobber.x, objBobber.y);
	x = objBobber.x;
	y = objBobber.y;
} else {
	isDropped = true;
	
	// Drop back in the water :)
	if (place_meeting(x, y, objWaterZone)) {
		instance_create_depth(x, y, -1, objSplashBig);
		instance_destroy();
		
	// Put it in the pot for yum yums :)
	} else if (place_meeting(x, y, objPot)) {
		instance_create_depth(objPot.x, objPot.y, -1, objSplashBig);
		put_fish_in_pot(image_index);
		instance_destroy();
		
	// DROP ON THE GROUND AND LET THE POOR THING SUFFOCATE
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