window_set_caption("Blockpocalypse");

global.moveCam = false;
global.doorID = -1;
global.reset = false;
global.itemCreated = false;

global.brokenCount = 4;
global.openCount = 2;
global.tableCount = 2;

global.movement = true;


global.confirm = false;
global.jump = false;
global.l = false;
global.r = false;
global.u = false;
global.d = false;

if !variable_global_exists("respawn") { global.respawn = false; }