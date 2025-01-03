if global.item == "" { exit; }

item = asset_get_index($"obj{global.item}");

if !global.itemCreated { instance_create_layer(x, y-10, layer, item); global.itemCreated = true; }

if image_speed == 0
{
	item.x = x;
	item.y = y-10;
	item.depth = depth - 10;

	item.image_alpha = room != rmFall;
}

if global.r { item.image_xscale = -1; }
if global.l { item.image_xscale = 1; }


if hp <= 0
{
	image_speed = 1;
	if image_index >= 7 { image_index = 7; }
	
	global.movement = false;

	global.confirm = false;
	global.jump = false;
	global.l = false;
	global.r = false;
	global.u = false;
	global.d = false;
}