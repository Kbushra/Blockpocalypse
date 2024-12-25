if keyboard_check_pressed(vk_f4) { window_set_fullscreen(!window_get_fullscreen()); }

var camX = camera_get_view_x(view_camera[0]);
var camY = camera_get_view_y(view_camera[0]);

var centerX = objPlayer.x - 256;
var centerY = objPlayer.y - 192;

var centerClampX = clamp(centerX, 0, room_width - 512);
var centerClampY = clamp(centerY, 0, room_height - 384);

if global.moveCam { exit; }

if instance_exists(objTransition) && global.doorID == -1
{ camera_set_view_pos(view_camera[0], centerClampX, centerClampY); }
else
{ camera_set_view_pos(view_camera[0], lerp(camX, centerClampX, 0.1), lerp(camY, centerClampY, 0.1)); }