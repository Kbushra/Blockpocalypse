ini_open("Blockpocalypse");

global.spwnRoom = ini_read_real("Stats", "Spawn room", rmSubway);
global.spwnX = ini_read_real("Stats", "Spawn X", 262);
global.spwnY = ini_read_real("Stats", "Spawn Y", -60);
global.item = ini_read_string("Stats", "Item", "");
global.highScore = ini_read_real("Stats", "High score", 0);
global.gamemode = ini_read_real("Stats", "Game mode", 0);

for (var i = 1; i <= global.brokenCount; i++)
{ global.broken[i-1] = ini_read_real("Object state", $"Object {i} broken", false); }

for (var i = 1; i <= global.openCount; i++)
{ global.opened[i-1] = ini_read_real("Object state", $"Door {i} opened", false); }

for (var i = 1; i <= global.tableCount; i++)
{ global.firstCollision[i-1] = !ini_read_real("Object state", $"Table {i} used", false); }

ini_close();

if !global.respawn
{
	room_goto(rmFall);
	objPlayer.x = 256;
	objPlayer.y = 224;
}
else
{
	instance_create_layer(0, 0, "Effects", objDeath);
	
	room_goto(global.spwnRoom);
	objPlayer.x = global.spwnX;
	objPlayer.y = global.spwnY;
	
	global.respawn = false;
}