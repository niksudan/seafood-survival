/// person_define(scale, itemSprite)
/// @param scale
/// @param itemSprite

p_scale = argument0;
p_inc = 0;
p_headDir = 0;
p_bodyDir = 0;
p_bodyWobbleScale = 1;
p_itemSprite = argument1;
p_leftHandX = p_scale * (lengthdir_x(12, p_bodyDir + 90));
p_leftHandY = p_scale * (lengthdir_y(12, p_bodyDir + 90));
p_rightHandX = p_scale * (lengthdir_x(12, p_bodyDir - 90));
p_rightHandY = p_scale * (lengthdir_y(12, p_bodyDir - 90));
