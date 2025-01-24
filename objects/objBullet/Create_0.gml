if type == 0 { image_xscale = objGun.image_xscale; }

direction = 90 + (90*image_xscale);
speed = 10 - (3*type);

timer = 10;

soundId = audio_play_sound(sndBullet, 10, false);
if type == 0 { audio_sound_gain(soundId, 0.5, 1); }