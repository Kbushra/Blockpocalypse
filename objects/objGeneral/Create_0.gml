window_set_caption("Blockpocalypse");

global.moveCam = false;
global.doorID = -1;
global.reset = false;
global.itemCreated = false;

global.brokenCount = 14;
global.openCount = 2;
global.tableCount = 3;

global.movement = true;

global.trainingSessions = 0;
global.training = false;
global.bullets = 0;
global.maxBullets = 0;

global.confirm = false;
global.jump = false;
global.l = false;
global.r = false;
global.u = false;
global.d = false;

if !variable_global_exists("respawn") { global.respawn = false; }