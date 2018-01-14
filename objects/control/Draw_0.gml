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
