colourManagement();

grounded = !place_free(x, y+1);

if !global.training && image_index >= 7 { instance_destroy(); }
if global.training && image_index >= 4 { image_index = 4; }
if global.training && image_alpha <= 0 { instance_destroy(); }

timer--;
if timer <= 0
{
	instance_create_layer(x, y, "Instances", objMine);
	timer = irandom_range(120, 240);
	if global.gamemode == 1 { timer = irandom_range(80, 160); }
}

iframes--;

if instance_exists(objNuke) && objNuke.exploded && !collision_rectangle(x-16, 0, x+16, y-16, objSolid, false, true)
{ hp = 0; image_speed = 1; }

if hp <= 0
{
	image_speed = 1;
	if global.training { image_alpha -= 0.05; }
}