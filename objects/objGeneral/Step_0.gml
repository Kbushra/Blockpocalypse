if keyboard_check_pressed(vk_f4) { window_set_fullscreen(!window_get_fullscreen()); }

var camX = camera_get_view_x(view_camera[0]);
var camY = camera_get_view_y(view_camera[0]);

var centerX = objPlayer.x - camera_get_view_width(view_camera[0])/2;
var centerY = objPlayer.y - camera_get_view_height(view_camera[0])/2;

var centerClampX = clamp(centerX, 0, room_width - camera_get_view_width(view_camera[0]));
var centerClampY = clamp(centerY, 0, room_height - camera_get_view_height(view_camera[0]));

if global.moveCam { exit; }

if instance_exists(objTransition) && global.doorID == -1
{ camera_set_view_pos(view_camera[0], centerClampX, centerClampY); }
else
{ camera_set_view_pos(view_camera[0], lerp(camX, centerClampX, 0.1), lerp(camY, centerClampY, 0.1)); }