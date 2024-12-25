if global.doorID == doorID
{
	objPlayer.image_angle = 0;
	objPlayer.x = positionX;
	objPlayer.y = positionY;
	global.doorID = -1; 
}

halfMemo = false;