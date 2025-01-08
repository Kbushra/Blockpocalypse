if objPlayer.x > 380 { exit; }

global.movement = false;
pauseControl();

xSize = lerp(xSize, 256, 0.1);
ySize = lerp(ySize, 192, 0.1);
camera_set_view_size(view_camera[0], xSize, ySize);