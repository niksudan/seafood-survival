shader_set(shdOutline);
shader_set_uniform_f(outlineWidth, texture_get_texel_width(surface_get_texture(oceanSurface)));
shader_set_uniform_f(outlineHeight, texture_get_texel_height(surface_get_texture(oceanSurface)));
shader_set_uniform_f(outlineDepth, 3);
draw_surface(oceanSurface, 0, 0);
shader_reset();

shader_set(shdOutline);
shader_set_uniform_f(outlineWidth, texture_get_texel_width(surface_get_texture(islandSurface)));
shader_set_uniform_f(outlineHeight, texture_get_texel_height(surface_get_texture(islandSurface)));
shader_set_uniform_f(outlineDepth, 8);
draw_surface(islandSurface, 0, 0);
shader_reset();

shader_set(shdOutline);
shader_set_uniform_f(outlineWidth, texture_get_texel_width(surface_get_texture(gameSurface)));
shader_set_uniform_f(outlineHeight, texture_get_texel_height(surface_get_texture(gameSurface)));
shader_set_uniform_f(outlineDepth, 3);
draw_surface(gameSurface, 0, 0);
shader_reset();

draw_set_alpha(0.2);
draw_surface(cloudSurface, 0, 0);
draw_set_alpha(1);

if (gameWin || gameStart) {
	draw_set_alpha(0.75);
	draw_set_color(c_black);
	draw_rectangle(view_xport[0], view_yport[0], view_xport[0] + view_wport[0], view_yport[0] + view_hport[0], false);
	draw_set_alpha(1);
	draw_set_font(fntScore);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_set_color(c_white);
	var text;
	if (gameWin) {
		text = "Chef whipped up the finest cuisine\n" +
		"That you had possibly ever seen\n\n" +
		"You ate it all, and enjoyed every bite\n" +
		"But the natives killed you during the night!"
	} else {
		text = "\n\n" +
		"A game by Nik Sudan\nMade for GM48 #25\n\n\n" +
		"Trapped on an island with nothing but fish\n" +
		"Chef was determined to make the best dish\n\n" +
		"Catch him some fish on these quiet sands\n" + 
		"But avoid the native prying hands!\n\n\n" +
		"WASD / Arrow keys = Move\n" +
		"LMB = Cast Line / Drop Fish\n" +
		"Reel in by moving the rod away"
	}
	draw_text(objPlayer.x, objPlayer.y, text);
	draw_set_font(fntTitle);
	if (gameWin) {
		draw_text(objPlayer.x, objPlayer.y + 48, "THE END!");
	} else if (gameStart) {
		draw_text(objPlayer.x, objPlayer.y - 64, "SEAFOOD SURVIVAL");
	}
}
if (!objPlayer.isUsingRod) {
	draw_sprite(sprCursor, 0, mouse_x, mouse_y);
}