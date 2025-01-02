if !global.firstCollision[num] { exit; }

if objPlayer.item != 0 { instance_destroy(objPlayer.item); }

global.itemCreated = false;
global.item = itemName;
instance_destroy(item);

global.firstCollision[num] = false;