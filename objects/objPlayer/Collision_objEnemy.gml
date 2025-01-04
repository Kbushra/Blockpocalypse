var invulnerable = vMovement > 9 || instance_exists(objShockwave);
if other.image_speed == 0 && !invulnerable && other.iframes <= 0 { hp--; sat = 255; other.iframes = 10; }