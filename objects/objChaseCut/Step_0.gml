if flag == 0
{
	objEnemyCut.y = lerp(objEnemyCut.y, 368, 0.1);
	if objEnemyCut.y < 370 { flag++; }
}

if flag == 1
{
	acc -= 0.1;
	objEnemyCut.y += acc;
	if objEnemyCut.y < 140 { flag++; }
}

if flag == 2
{
	objAirplane2.y -= 5;
	objEnemyCut.y -= 5;
	
	if objAirplane2.y < -200 { instance_destroy(objAirplane2); instance_destroy(objEnemyCut); flag++; }
}

if flag == 3 && objPlayer.x < 450
{
	instance_create_layer(100, 20, "Instances", objEnemyCut);
	flag++;
}

if flag == 4
{
	objEnemyCut.y += 8;
	objEnemyCut.image_angle += 3;
	
	if objEnemyCut.y >= 460 { flag++; }
}

if flag == 5
{
	objEnemyCut.image_angle = lerp(objEnemyCut.image_angle, 1080, 0.1);
	if objEnemyCut.x > 80 { objEnemyCut.x -= 2; }
	if objPlayer.x < objEnemyCut.x+64 { flag++; instance_destroy(objNukeSpawner); }
}

if flag == 6
{
	global.movement = false;
	pauseControl();
	
	objEnemyCut.image_angle = lerp(objEnemyCut.image_angle, 1080, 0.1);
	
	xSize = lerp(xSize, 256, 0.1);
	ySize = lerp(ySize, 192, 0.1);

	camera_set_view_size(view_camera[0], xSize, ySize);
	
	with (objPlayer)
	{
		x = lerp(x, objEnemyCut.x, 0.05);
		y = lerp(y, objEnemyCut.y, 0.05);
		image_angle += 3;
		
		if place_meeting(x, y, objEnemyCut) { other.flag++; other.sat = 255; }
	}
}

if flag == 7
{
	xSize = lerp(xSize, 256, 0.1);
	ySize = lerp(ySize, 192, 0.1);

	camera_set_view_size(view_camera[0], xSize, ySize);
	
	with (objPlayer)
	{
		x = lerp(x, objEnemyCut.x, 0.05);
		y = lerp(y, objEnemyCut.y, 0.05);
		image_angle = lerp(image_angle, 720, 0.1);
	}
	
	with (objEnemyCut)
	{
		image_blend = make_color_hsv(0, other.sat, 255);
		other.sat -= 10;
		other.sat = clamp(other.sat, 0, 255);
	}
	
	if sat < 200 { objEnemyCut.image_speed = 1; }
	if objEnemyCut.image_index >= 7
	{
		instance_destroy(objEnemyCut);
		layer_sprite_destroy(objGun);
		global.item = "Gun";
		global.itemCreated = false;
		
		instance_create_layer(-100, -100, "Instances", objNukeSpawner);
		
		flag++;
	}
}

if flag == 8
{
	objPlayer.image_angle = 0;
	
	xSize = lerp(xSize, 512, 0.1);
	ySize = lerp(ySize, 384, 0.1);

	camera_set_view_size(view_camera[0], xSize, ySize);
	
	global.movement = true;
}