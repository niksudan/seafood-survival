x += spd;
if (x >= room_width) {
	x = 0;
	y = random(room_height);
	image_index = irandom(6);
	image_xscale = choose(1, -1) * random_range(1, 2);
	image_yscale = image_xscale;
	spd = random_range(0.1, 0.3);
}