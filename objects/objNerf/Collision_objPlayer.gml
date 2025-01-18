if activated { exit; }

activated = true;
if nerf == 1 { global.maxSpd -= 0.25; }
if nerf == 2 { global.maxHp--; objPlayer.hp--; }

global.maxSpd = clamp(global.maxSpd, 1, 2);
global.maxHp = clamp(global.maxHp, 1, 6);
objPlayer.hp = clamp(objPlayer.hp, 1, 6);