depth = -9999;

image_xscale = room_width;
image_yscale = room_height;

if fade { image_alpha += amount;  } 
	else { image_alpha -= amount; }
	
if image_alpha >= 1 { 
	
	hold --;
	if hold <= 0 { fade = false; }
	
	if instance_exists(target) { target.halfMemo = true; }
}

if image_alpha <= 0 && !fade { 
	
	if instance_exists(target) { target.memo = true; }
	
	instance_destroy();
}

if camZooming {
	
	camZoom += camZoomDif/frames;
	
	camera_set_view_size(view_camera[0], startCamWidth * camZoom, startCamHeight * camZoom);
	camera_set_view_pos(view_camera[0], camCenterX - camera_get_view_width(view_camera[0])/2, camCenterY - camera_get_view_height(view_camera[0])/2);
	
	if camZoom >= 1 + camZoomDif && camZoomDif >= 0 { camZooming = false; }
	if camZoom <= 1 + camZoomDif && camZoomDif < 0 { camZooming = false; }
}