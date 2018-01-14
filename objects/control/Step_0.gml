// Viewport manipulation
// view_set_xport(0, lerp(view_xport[0], objPlayer.x - (view_wport[0] / 2), 0.5));
// view_set_yport(0, lerp(view_yport[0], objPlayer.y - (view_hport[0] / 2), 0.5));

// Rendering
if (!surface_exists(gameSurface)) {
	gameSurface = surface_create(room_width, room_height);
}

if (!surface_exists(islandSurface)) {
	islandSurface = surface_create(room_width, room_height);
}

surface_set_target(islandSurface);
	draw_clear_alpha(c_black, 0);
	shader_set(shdOutline);
	shader_set_uniform_f(outlineWidth, texture_get_texel_width(surface_get_texture(islandSurface)));
	shader_set_uniform_f(outlineHeight, texture_get_texel_height(surface_get_texture(islandSurface)));
	shader_set_uniform_f(outlineDepth, 8);
	draw_sprite(sprIsland, 0, objIsland.x, objIsland.y);
surface_reset_target();


surface_set_target(gameSurface);
	draw_clear_alpha(c_black, 0);
	shader_set(shdOutline);
	shader_set_uniform_f(outlineWidth, texture_get_texel_width(surface_get_texture(gameSurface)));
	shader_set_uniform_f(outlineHeight, texture_get_texel_height(surface_get_texture(gameSurface)));
	shader_set_uniform_f(outlineDepth, 3);
	with (scenery) {
		draw_self();	
	}
	with (person) {
		person_render();
	}
surface_reset_target();
