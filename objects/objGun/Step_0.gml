layer = layer_get_id("Instances");

if global.confirm { shooting = !shooting; image_index = 0; }

image_speed = shooting;

if shooting
{
	if image_index >= 1 && !shot
	{ instance_create_layer(x-(30*image_xscale), y, layer, objBullet); shot = true; }
	else { shot = false; }
}