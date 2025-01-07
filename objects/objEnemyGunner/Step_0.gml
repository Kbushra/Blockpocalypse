if dir == 1 { var xCheck = clamp(objPlayer.x, x-320, x) == objPlayer.x; }
else { var xCheck = clamp(objPlayer.x, x, x+320) == objPlayer.x; }

if clamp(objPlayer.y, y-48, y+48) == objPlayer.y && xCheck { weapon.shooting = true; }
else { weapon.shooting = false; weapon.image_index = 0; timer = 45; }