itemManagement();
hpManagement();
colourManagement();

global.reset = place_meeting(x, y, objReset);

if global.bullets == -1 && !instance_exists(objTransition)
{ global.bullets = 30*instance_number(objEnemy); global.maxBullets = global.bullets; }

global.playerSpd = global.maxSpd - place_meeting(x, y, objWire);