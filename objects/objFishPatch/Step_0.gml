if (timer <= 0) {
	timer = irandom_range(10, 30);	
	targetRadius = 32 + irandom(32);
	targetDirection = random(360);
	targetSpeed = choose(0, random_range(0.1, 0.3));
}

timer -= 1;

n += 1;

radius = lerp(radius, targetRadius, 0.01);
speed = lerp(speed, targetSpeed, 0.01);
direction -= angle_difference(direction, targetDirection) * 0.01;