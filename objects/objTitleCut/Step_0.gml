objPlayer.image_angle += 5;
objPlayer.image_xscale = 1;
objPlayer.image_yscale = 1;
objPlayer.x = 256;

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
	introTeleporter.activated = false;
	flag++;
}