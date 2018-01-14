// Fade in on spawn
if (!isSpooked && image_alpha < 1) {
	image_alpha += 0.05;	
}

// Change direction, radius and speed randomly
timer -= 1;
if (timer <= 0) {
	timer = irandom_range(10, 30);	
	targetRadius = 32 + irandom(32);
	targetDirection = random(360);
	targetSpeed = choose(0, random_range(0.1, 0.3));
	
	// Interested if it detects your bobber
	if (!isInterested && objPlayer.isUsingRod &&
		instance_exists(objBobber) && distance_to_object(objBobber) < radius &&
		irandom(2) < 1) {
		isInterested = true;
	}
}

if (canBite) {
	biteTimer -= 1;
	if (biteTimer <= 0) {
		audio_play_sound(sndBite, 0, false);
		biteTimer = biteDelay;
		numberOfBites -= 1;
		jolt_rod();
		
		// Left it too long
		if (isBiting) {
			isSpooked = true;
			audio_play_sound(sndSpook, 0, false);
		}

		if (numberOfBites <= 0) {
			instance_create_depth(x, y, -1, objSplashBig);
			isBiting = true;
			audio_play_sound(sndExclamation, 0, false);
		} else {
			instance_create_depth(x, y, -1, objSplashSmall);	
			speed -= 0.1;
		}
	}
}

// Run away if spooked
if (isSpooked) {
	instance_create_depth(x, y, -1, objSplashBig);	
	targetSpeed = 1;
	speed = targetSpeed;
	image_alpha -= 0.05;
	if (image_alpha <= 0) {
		instance_destroy();	
	}

// Swim close to bobber if interested
// Trigger biting if close enough
} else if (isInterested) {
	if (instance_exists(objBobber) && !objBobber.isReeling) {
		targetDirection = point_direction(x, y, objBobber.x, objBobber.y);
		if (distance_to_object(objBobber) < 2) {
			canBite = true;
			targetSpeed = 0;
		} else {
			canBite = false;	
		}
	} else {
		// Caught the fish!
		if (isBiting) {
			instance_create_depth(x, y, -1, objSplashBig);
			instance_create_depth(x, y, -1, objFish);
			objPlayer.hasFish = true;
			instance_destroy();
			
		// Pulled too early
		} else {
			isSpooked = true;
			audio_play_sound(sndSpook, 0, false);
		}
	}
}

// Apply factors
radius = lerp(radius, targetRadius, 0.01);
speed = lerp(speed, targetSpeed, 0.01);
direction -= angle_difference(direction, targetDirection) * 0.01;