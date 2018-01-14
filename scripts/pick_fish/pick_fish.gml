objChef.fishNeeded = choose(1, 2, 3);

if (control.fishCount > 3 && control.fishCount < 6 && random(100) < 20) {
	objChef.fishNeeded = choose(4, 5, 6);
} else if (random(100) < 40) {
	objChef.fishNeeded = choose(4, 5, 6);
}