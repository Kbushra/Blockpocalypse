if global.doorID == -1 && activated
{
	global.doorID = doorID; 
	camFlash(c_black, 0.025, 0, id); 
	
	if global.training { global.trainingSessions++; global.bullets = -1; }
}