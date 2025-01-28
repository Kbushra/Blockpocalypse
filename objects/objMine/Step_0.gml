if image_index >= 6 { instance_destroy(); }
if place_free(x, y+3) { y += 3; }

if global.gamemode == 0
{
	timer--;
	if timer <= 0 { image_speed = 1; }
}