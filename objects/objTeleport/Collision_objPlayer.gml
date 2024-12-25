if !activated { exit; }

var diffX = objPlayer.x - positionX;
var diffY = objPlayer.y - positionY;

camera_set_view_pos(view_camera[0], camera_get_view_x(view_camera[0]) - diffX,
	camera_get_view_y(view_camera[0]) - diffY);

objPlayer.x = positionX;
objPlayer.y = positionY;