objChef.fishNeeded = choose(1, 2, 3);

switch (control.fishCount) {
	case 2:
	case 3:
		if (random(100) < 25) {
			objChef.fishNeeded = choose(4, 5, 6);
		}
		break;
	case 4:
	case 5:
		if (random(100) < 50) {
			objChef.fishNeeded = choose(4, 5, 6);
		}
		break;
}