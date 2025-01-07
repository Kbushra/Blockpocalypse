objPlayer.image_angle += 5;
objPlayer.image_xscale = 1;
objPlayer.image_yscale = 1;

if instance_exists(objGun) { objGun.shooting = false; }

if flag == 0
{
	objPlayer.vMovement = 0;
	
	wait--;
	if wait > 0 { exit; }
	
	flag++;
	wait = 120;
}

if flag == 1
{	
	wait--;
	if wait > 0 { exit; }
	
	flag++;
}

if flag == 2 && global.confirm
{
	if !file_exists("Blockpocalypse") { introTeleporter.activated = false; }
	else { camFlash(c_black, 0.025, 0, id); }
	
	flag++;
}

if flag == 3 && halfMemo
{
	room_goto(global.spwnRoom);
	objPlayer.x = global.spwnX;
	objPlayer.y = global.spwnY;
	
	objPlayer.image_angle = 0;
	objPlayer.vMovement = 0;
	
	global.movement = true;
	
	global.itemCreated = false;
}