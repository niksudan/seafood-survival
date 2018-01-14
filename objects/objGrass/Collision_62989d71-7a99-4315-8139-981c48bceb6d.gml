if (abs(other.xSpeed) >= 1 || abs(other.ySpeed) >= 1) {
	image_xscale += random(0.075);
	image_yscale += random(0.075);
	if (!audio_is_playing(sndGrass)) {
		audio_play_sound(sndGrass, 0, false);
	}
}