oceanSurface = surface_create(room_width, room_height);
islandSurface = surface_create(room_width, room_height);
gameSurface = surface_create(room_width, room_height);
cloudSurface = surface_create(room_width, room_height);

outlineWidth = shader_get_uniform(shdOutline, "outlineWidth");
outlineHeight = shader_get_uniform(shdOutline, "outlineHeight");
outlineDepth = shader_get_uniform(shdOutline, "outlineDepth");

fishCount = 0;
gameStart = true;
gameWin = false;

audio_play_sound(sndMusic, 0, true);

repeat(6) {
	instance_create_depth(0, 0, -2, objCloud);	
}