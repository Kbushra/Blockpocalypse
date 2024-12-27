x = camera_get_view_x(view_camera[0]);
y = camera_get_view_y(view_camera[0]);

if fade { image_alpha += amount;  } 
	else { image_alpha -= amount; }
	
if image_alpha >= 1 { 
	
	hold --;
	if hold <= 0 { fade = false; }
	
	if instance_exists(target) { target.halfMemo = true; }
}

if image_alpha <= 0 && !fade { 
	
	if instance_exists(target) { target.memo = true; }  
	
	view_set_xport(view_camera[0], 0);
	view_set_yport(view_camera[0], 0);
	
	instance_destroy();
}