if (timer <= 0) {
	timer = irandom_range(60, 90);
	targetRadius = 64 + irandom(64);
	targetDirection = random(360);
	targetSpeed = choose(0, random_range(0.3, 0.5));
}

timer -= 1;


if (distance_to_object(objPlayer) < 24) {
	targetSpeed = -1;
} else if (distance_to_object(objPlayer) < 64) {
	targetDirection = point_direction(x, y, objPlayer.x, objPlayer.y);
	targetSpeed = 0;
} else if (point_distance(x, y, xorigin, yorigin) > patrolRange) {
	targetDirection = point_direction(x, y, xorigin, yorigin);
	targetSpeed = 0.5;
}

if (distance_to_object(objPlayer) < radius && objPlayer.hasFish) {
	targetDirection = point_direction(x, y, objBobber.x, objBobber.y);
	targetSpeed = 1;
	if (distance_to_object(objBobber) < 2) {
		objPlayer.hasFish = false;
		jolt_rod();
	}
}

radius = lerp(radius, targetRadius, 0.01);
speed = lerp(speed, targetSpeed, 0.1);
direction -= angle_difference(direction, targetDirection) * 0.1;

person_update();