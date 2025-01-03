if y >= objPlayer.y - 48 && y <= objPlayer.y + 48 && x > objPlayer.x - 320 && x < objPlayer.x + 320
{ weapon.shooting = true; }
else { weapon.shooting = false; weapon.image_index = 0; timer = 45; }