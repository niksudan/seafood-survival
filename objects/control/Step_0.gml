// Rendering

if (!surface_exists(oceanSurface)) {
	oceanSurface = surface_create(room_width, room_height);
}

surface_set_target(oceanSurface);
	draw_clear_alpha(c_black, 0);
	with (objFishPatch) {
		draw_sprite_ext(sprFish, 0, x, y, 1, 1, direction, c_white, 1);
	}
surface_reset_target();

if (!surface_exists(islandSurface)) {
	islandSurface = surface_create(room_width, room_height);
}

surface_set_target(islandSurface);
	draw_clear_alpha(c_black, 0);
	draw_sprite(sprIsland, 0, objIsland.x, objIsland.y);
surface_reset_target();

if (!surface_exists(gameSurface)) {
	gameSurface = surface_create(room_width, room_height);
}

surface_set_target(gameSurface);
	draw_clear_alpha(c_black, 0);
	with (scenery) {
		draw_self();
	}
	if (instance_exists(objBobber)) {
		draw_set_color(c_black);
		draw_line(objBobber.x, objBobber.y, objPlayer.rodX, objPlayer.rodY);
	}
	with (person) {
		person_render();
	}
surface_reset_target();
