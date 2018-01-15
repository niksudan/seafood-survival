if (!control.gameWin) {
	x += xSpeed;
	y += ySpeed;
	direction = point_direction(x, y, mouse_x, mouse_y);
}

if (hasFish) {
	p_bodyWobbleScale = 0.15;
} else {
	p_bodyWobbleScale = 1;
}

person_update();
