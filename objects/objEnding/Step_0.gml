if image_index > image_number-1
{
	if sprite_index == sprEnding1 { sprite_index = sprEnding2; image_index = 0; }
	else if sprite_index == sprEnding2 { sprite_index = sprEnding3; image_index = 0; }
	else { image_index = image_number-1; ended = true; }
}

if halfMemo
{
	room_goto(rmHouse);
	objPlayer.x = 256;
	objPlayer.y = 224;
}