/// person_update

p_inc += 1;

var p_moveSpeed = point_distance(x, y, xprevious, yprevious) * 15;
var p_headWobble = ((p_moveSpeed / 2) * sin(p_inc / 5));
var p_bodyWobble = p_bodyWobbleScale * ((p_moveSpeed * sin(p_inc / 5)));

p_headDir -= angle_difference(p_headDir, direction + p_headWobble) * 0.2;
p_bodyDir -= angle_difference(p_bodyDir, p_headDir + p_bodyWobble) * 0.2;

p_leftHandX = p_scale * (lengthdir_x(12, p_bodyDir + 90));
p_leftHandY = p_scale * (lengthdir_y(12, p_bodyDir + 90));
p_rightHandX = p_scale * (lengthdir_x(12, p_bodyDir - 90));
p_rightHandY = p_scale * (lengthdir_y(12, p_bodyDir - 90));