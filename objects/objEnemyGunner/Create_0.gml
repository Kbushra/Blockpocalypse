hp = 15;
sat = 0;

iframes = 5;

image_speed = 0;

weapon = instance_create_layer(x, y-10, "Instances", objOtherGun);
weapon.shooting = false;
weapon.depth = depth - 1;
weapon.image_xscale = dir;