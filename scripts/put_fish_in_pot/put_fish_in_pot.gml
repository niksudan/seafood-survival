/// @param fishIndex

if (argument0 == objChef.fishNeeded) {
	control.fishCount += 1;
	audio_play_sound(sndPot, 0, false);
	pick_fish();
	if (control.fishCount >= 6) {
		control.gameWin = true;	
	}
	instance_create_depth(objChef.x + 10, objChef.y - 24, -1, objSplashBig);
}