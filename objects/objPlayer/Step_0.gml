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

if (abs(xSpeed) >= 1 || abs(ySpeed) >= 1) {
	if (p_inc % 15 == 0) {
		audio_play_sound(sndStep, 0, false);	
	}	
}

// Rod tip pos
rodX = x + lengthdir_x(75, p_bodyDir - 10);
rodY = y + lengthdir_y(75, p_bodyDir - 10);