global.spwnRoom = room;
global.spwnX = objPlayer.x;
global.spwnY = objPlayer.y;
global.volume = audio_get_master_gain(0);

ini_open("Blockpocalypse");

ini_write_real("Stats", "Spawn room", global.spwnRoom);
ini_write_real("Stats", "Spawn X", global.spwnX);
ini_write_real("Stats", "Spawn Y", global.spwnY);
ini_write_string("Stats", "Item", global.item);
ini_write_real("Stats", "High score", global.highScore);

ini_write_real("Settings", "Game mode", global.gamemode);
ini_write_real("Settings", "Volume", global.volume);

for (i = 1; i <= global.brokenCount; i++)
{ ini_write_real("Broken objects", $"Object {i} broken", global.broken[i-1]); }

for (var i = 1; i <= global.openCount; i++)
{ ini_write_real("Object state", $"Door {i} opened", global.opened[i-1]); }

for (var i = 1; i <= global.tableCount; i++)
{ ini_write_real("Object state", $"Table {i} used", !global.firstCollision[i-1]); }

ini_close();

firstCollision = false;