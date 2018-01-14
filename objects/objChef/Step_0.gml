if (distance_to_object(objPlayer) < 64) {
	direction = point_direction(x, y, objPlayer.x, objPlayer.y);
}

person_update();