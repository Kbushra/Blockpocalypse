if type != 0 { exit; }

other.hp--;
other.sat = 255;

if other.hp <= 0 { other.image_speed = 1; }
instance_destroy();