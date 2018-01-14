image_speed = 0;
image_index = choose(1, 2, 3);
dir = 0;
n = 0;
x = objBobber.x;
y = objBobber.y;
isDropped = false;
health = 100;

// Rare feeshy
if (random(100) > 75) {
	image_index = choose(4, 5, 6);	
}
