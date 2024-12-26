if global.item == "" { exit; }

item = asset_get_index($"obj{global.item}");

if !global.itemCreated { instance_create_layer(x, y-10, layer, item); global.itemCreated = true; }

item.x = x;
item.y = y-10;
item.depth = depth - 10;