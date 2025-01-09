if objPlayer.x > 380 { exit; }

if flag == 4
{
	xSize = lerp(xSize, 512, 0.1);
	ySize = lerp(ySize, 384, 0.1);
}
else
{	
	global.movement = false;
	pauseControl();
	
	xSize = lerp(xSize, 256, 0.1);
	ySize = lerp(ySize, 192, 0.1);
}

camera_set_view_size(view_camera[0], xSize, ySize);

if flag == 0
{
	objGun.shooting = false;
	
	objEnemyCut.x = objPlayer.x - 64;
	objEnemyCut.y = lerp(objEnemyCut.y, 210, 0.1);
	if objEnemyCut.y < 220 { flag++; }
}

if flag == 1
{
	if objEnemyCut.y < 272 { acc += 0.1; objEnemyCut.y += acc; }
	else
	{
		instance_destroy(objPlayer.item);
		instance_create_layer(objEnemyCut.x, objEnemyCut.y-10, "Instances", objOtherGun);
		objOtherGun.image_xscale = -1;
		
		global.item = "";
		flag++;
		wait = 20;
	}
}

if flag == 2
{
	wait--;
	if wait > 0 { exit; }
	
	objOtherGun.shooting = true;
	
	if wait < -35
	{
		objOtherGun.shooting = false;
		objOtherGun.image_xscale = 1;
		
		objPlayer.image_index = 1;
		objPlayer.hp = 3;
		
		flag++;
		wait = 60;
	}
}

if flag == 3
{
	objEnemyCut.x -= 6;
	objOtherGun.x -= 6;
	wait--;
	
	if wait < 0
	{
		instance_destroy(objEnemyCut);
		instance_destroy(objOtherGun);
		global.movement = true;
		flag++;
	}
}