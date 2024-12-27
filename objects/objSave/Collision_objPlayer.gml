global.spwnRoom = room;
global.spwnX = objPlayer.x;
global.spwnY = objPlayer.y;

ini_open("Blockpocalypse");

ini_write_real("Stats", "Spawn room", global.spwnRoom);
ini_write_real("Stats", "Spawn X", global.spwnX);
ini_write_real("Stats", "Spawn Y", global.spwnY);
ini_write_string("Stats", "Item", global.item);

for (i = 1; i < global.brokenCount; i++)
{ ini_write_real("Broken objects", $"Object {i} broken", global.broken[i-1]); }

ini_close();

firstCollision = false;