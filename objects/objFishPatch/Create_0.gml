timer = 0;
biteDelay = 120;
biteTimer = biteDelay;
numberOfBites = 1 + choose(irandom(2), irandom(3));

radius = 32;
targetRadius = radius;

direction = random(360);
targetDirection = direction;

speed = 0.2;
targetSpeed = speed;

n = 0;

image_alpha = 0;
isInterested = false;
canBite = false;
isBiting = false;
isSpooked = false;