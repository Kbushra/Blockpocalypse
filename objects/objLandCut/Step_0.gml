if !activated { exit; }

wait--;
if wait <= 0 { global.movement = true; instance_destroy(); exit; }

global.movement = false;