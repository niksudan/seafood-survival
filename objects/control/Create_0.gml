oceanSurface = surface_create(room_width, room_height);
islandSurface = surface_create(room_width, room_height);
gameSurface = surface_create(room_width, room_height);

outlineWidth = shader_get_uniform(shdOutline, "outlineWidth");
outlineHeight = shader_get_uniform(shdOutline, "outlineHeight");
outlineDepth = shader_get_uniform(shdOutline, "outlineDepth");