if global.confirm && global.item == "Gun" { shooting = !shooting; image_index = 0; }

if global.training && global.bullets <= 0 { shooting = false; }

image_speed = shooting;

if shooting
{
	if image_index >= 1 && !shot
	{
		instance_create_layer(x-(30*image_xscale), y, "Instances", objBullet, {type:0} );
		if global.training { global.bullets--; }
		shot = true;
	}
	else { shot = false; }
}