ini_open("Blockpocalypse");

global.spwnRoom = ini_read_real("Stats", "Spawn room", rmFall);
global.spwnX = ini_read_real("Stats", "Spawn X", 256);
global.spwnY = ini_read_real("Stats", "Spawn Y", 224);
global.item = ini_read_string("Stats", "Item", "");

for (var i = 1; i <= global.brokenCount; i++)
{ global.broken[i-1] = ini_read_real("Object state", $"Object {i} broken", false); }

for (var i = 1; i <= global.openCount; i++)
{ global.opened[i-1] = ini_read_real("Object state", $"Door {i} opened", false); }

for (var i = 1; i <= global.tableCount; i++)
{ global.firstCollision[i-1] = !ini_read_real("Object state", $"Table {i} used", false); }

ini_close();

room_goto(rmFall);
objPlayer.x = 256;
objPlayer.y = 224;