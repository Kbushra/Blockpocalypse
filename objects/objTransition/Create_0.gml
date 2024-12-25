x = 0;
y = 0;

image_xscale = room_width;
image_yscale = room_height;

image_alpha = 0;

fade = true;
amount = 0;
hold = 0;

target = noone;


//Camera stuff
camZooming = false;

startCamWidth = camera_get_view_width(view_camera[0]);
startCamHeight = camera_get_view_height(view_camera[0]);

camCenterX = 0;
camCenterY = 0;
camZoomDif = 0;
camZoom = 1;
frames = 0;