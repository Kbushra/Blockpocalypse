image_speed = shooting;

if shooting
{
	if image_index >= 1 && !shot
	{
		var bullet = instance_create_layer(x-(30*image_xscale), y, "Instances", objBullet, {type:1} );
		bullet.image_xscale = image_xscale;
		bullet.direction = 90 + (90 * image_xscale);
		shot = true;
	}
	else { shot = false; }
}