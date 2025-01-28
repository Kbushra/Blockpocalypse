if global.gamemode == 0 { var dist = 256; } else { var dist = 320; }

if dir == 1 { var xCheck = clamp(objPlayer.x, x-dist, x) == objPlayer.x; }
else { var xCheck = clamp(objPlayer.x, x, x+dist) == objPlayer.x; }

if clamp(objPlayer.y, y-32, y+32) == objPlayer.y && xCheck { weapon.shooting = true; }
else { weapon.shooting = false; weapon.image_index = 0; timer = 45; }