if type != 0 { exit; }

other.hp--;
other.sat = 255;
audio_play_sound(sndHit, 10, false);

instance_destroy();