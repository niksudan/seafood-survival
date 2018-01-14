// Input
if (keyboard_check(vk_left) || keyboard_check(ord("A"))) {
	xDir = -1;
} else if (keyboard_check(vk_right) || keyboard_check(ord("D"))) {
	xDir = 1;
} else {
	xDir = 0;	
}
if (keyboard_check(vk_up) || keyboard_check(ord("W"))) {
	yDir = -1;
} else if (keyboard_check(vk_down) || keyboard_check(ord("S"))) {
	yDir = 1;
} else {
	yDir = 0;	
}

// Movement
xSpeed = lerp(xSpeed, xDir * maxSpeed, acceleration);
ySpeed = lerp(ySpeed, yDir * maxSpeed, acceleration);

// Collisions
if (xSpeed != 0 || ySpeed != 0) {
	if (place_meeting(x + xSpeed, y, objSolid)) {
		xSpeed = 0;
	}

	if (place_meeting(x, y + ySpeed, objSolid)) {
		ySpeed = 0;
	}
}

x += xSpeed;
y += ySpeed;

direction = point_direction(x, y, mouse_x, mouse_y);

person_update();
