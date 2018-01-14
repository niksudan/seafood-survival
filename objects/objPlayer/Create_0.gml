xDir = 0;
yDir = 0;
xSpeed = 0;
ySpeed = 0;
maxSpeed = 2;
acceleration = 0.3;
didClick = false;
isUsingRod = false;
hasFish = false;

person_define(1, sprRod);

rodX = x + lengthdir_x(75, p_bodyDir - 10);
rodY = y + lengthdir_y(75, p_bodyDir - 10);