ini_open("Blockpocalypse");

global.spwnRoom = ini_read_real("Stats", "Spawn room", rmFall);
global.spwnX = ini_read_real("Stats", "Spawn X", 256);
global.spwnY = ini_read_real("Stats", "Spawn Y", 224);
global.item = ini_read_string("Stats", "Item", "");

for (var i = 1; i < global.brokenCount; i++)
{ global.broken[i-1] = ini_read_real("Broken objects", $"Object {i} broken", false); }

ini_close();

room_goto(rmFall);
objPlayer.x = 256;
objPlayer.y = 224;