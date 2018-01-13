/// person_update

p_inc += 1;

p_headDir -= angle_difference(p_headDir, direction) * 0.2;
p_bodyDir -= angle_difference(p_bodyDir, p_headDir) * 0.2;

p_leftHandX = p_scale * (lengthdir_x(12, p_bodyDir + 90));
p_leftHandY = p_scale * (lengthdir_y(12, p_bodyDir + 90));
p_rightHandX = p_scale * (lengthdir_x(12, p_bodyDir - 90));
p_rightHandY = p_scale * (lengthdir_y(12, p_bodyDir - 90));