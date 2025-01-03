x = camera_get_view_x(view_camera[0]);
y = camera_get_view_y(view_camera[0]);

if sprite_index == sprDeathIn && image_index >= 10 { global.respawn = true; game_restart(); }
else if sprite_index == sprDeathOut && image_index >= 5 { instance_destroy(); }