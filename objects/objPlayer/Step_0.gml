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

// Rod tip pos
rodX = x + lengthdir_x(75, p_bodyDir - 10);
rodY = y + lengthdir_y(75, p_bodyDir - 10);