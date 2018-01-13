/// person_render

draw_sprite_ext(p_itemSprite, 0, x + p_rightHandX, y + p_rightHandY, 1, 1, p_bodyDir, c_white, 1);
draw_sprite_ext(sprHand, 0, x + p_rightHandX, y + p_rightHandY, 1, 1, p_bodyDir, c_white, 1);
draw_sprite_ext(sprHand, 0, x + p_leftHandX, y + p_leftHandY, 1, 1, p_bodyDir, c_white, 1);
draw_sprite_ext(sprite_index, 1, x, y, 1, 1, p_bodyDir, c_white, 1);
draw_sprite_ext(sprite_index, 0, x, y, 1, 1, p_headDir, c_white, 1);