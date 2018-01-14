if (!surface_exists(oceanSurface)) {
	oceanSurface = surface_create(room_width, room_height);
}

surface_set_target(oceanSurface);
	draw_clear_alpha(c_black, 0);
	with (objFishPatch) {
		draw_sprite_ext(sprFish, 0, x, y, 1, 1, direction, c_white, image_alpha);
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
	with (person) {
		person_render();
	}
	with (effect) {
		draw_self();
	}
	if (instance_exists(objBobber)) {
		with (objBobber) {
			draw_self();	
		}
		draw_set_color(c_black);
		draw_line(objBobber.x, objBobber.y, objPlayer.rodX, objPlayer.rodY);
	}
	with (objFishPatch) {
		if (isBiting) {
			draw_sprite(sprExclamation, 0, x, y - 8);	
		}
	}
	if (!control.gameWin && !control.gameStart) {
		with (objChef) {
			draw_sprite(sprFish, fishNeeded, x + 10, y - 24);
		}
		draw_set_font(fntScore);
		draw_set_halign(fa_center);
		draw_set_alpha(1);
		draw_set_valign(fa_middle);
		draw_set_color(c_white);
		draw_text(objChef.x, objChef.y - 40, string(fishCount) + " / 6");
	}
surface_reset_target();
