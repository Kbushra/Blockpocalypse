other.hp--;
other.sat = 255;

if other.hp <= 0 { instance_destroy(other); }
instance_destroy();