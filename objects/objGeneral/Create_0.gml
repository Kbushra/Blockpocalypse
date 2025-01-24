audio_sound_set_track_position(sndHardLand, 0.35);
audio_sound_set_track_position(sndDash, 0.45);
audio_sound_set_track_position(sndNuke, 0.2);
audio_sound_loop_start(sndWarAtmo, 6);
audio_sound_loop_end(sndWarAtmo, 22);

window_set_caption("Blockpocalypse");
random_get_seed();

global.moveCam = false;
global.doorID = -1;
global.reset = false;
global.itemCreated = false;

global.playerSpd = 2;
global.maxSpd = 2;
global.maxHp = 6;

global.brokenCount = 14;
global.openCount = 2;
global.tableCount = 3;

global.movement = true;

global.trainingSessions = 0;
global.highScore = 0;
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