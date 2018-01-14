// H Movement
if (keyboard_check(vk_left) || keyboard_check(ord("A"))) {
	xDir = -1;
} else if (keyboard_check(vk_right) || keyboard_check(ord("D"))) {
	xDir = 1;
} else {
	xDir = 0;	
}

// V Movement
if (keyboard_check(vk_up) || keyboard_check(ord("W"))) {
	yDir = -1;
} else if (keyboard_check(vk_down) || keyboard_check(ord("S"))) {
	yDir = 1;
} else {
	yDir = 0;	
}

// Casting
if (didClick) {
	didClick = false;
	if (!isUsingRod) {
		isUsingRod = true;
		p_bodyDir += choose(1, -1) * random_range(10, 20);
		with (objBobber) {
			instance_destroy();
		}
		instance_create_depth(rodX, rodY, -1, objBobber);
	}
}