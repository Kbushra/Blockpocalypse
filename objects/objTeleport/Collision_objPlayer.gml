if !activated { exit; }

var diffX = objPlayer.x - positionX;
var diffY = objPlayer.y - positionY;

var newX = camera_get_view_x(view_camera[0]) - diffX;
var newY = camera_get_view_y(view_camera[0]) - diffY;

var clampX = clamp(newX, 0, room_width - camera_get_view_width(view_camera[0]));
var clampY = clamp(newY, 0, room_height - camera_get_view_height(view_camera[0]));

camera_set_view_pos(view_camera[0], clampX, clampY);

objPlayer.x = positionX;
objPlayer.y = positionY;

objPlayer.dashing = false;
objPlayer.dashLength = 15;