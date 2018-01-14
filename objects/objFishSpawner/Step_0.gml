// Change direction and speed randomly
timer -= 1;
if (timer <= 0) {
	timer = irandom_range(10, 30);
	targetDirection = random(360);
	targetSpeed = choose(0, random_range(1, 2));
}

// Apply factors
speed = lerp(speed, targetSpeed, 0.01);
direction -= angle_difference(direction, targetDirection) * 0.01;

// Spawn feeshy
spawnTimer -= 1;
if (spawnTimer <= 0) {
	spawnTimer = irandom_range(300, 600);
	if (instance_number(objFishPatch) < 5) {
		instance_create_depth(x, y, -1, objFishPatch);
	}
}
