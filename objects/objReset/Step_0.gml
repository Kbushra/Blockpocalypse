image_speed = global.reset;
if image_speed == 1 && !audio_is_playing(sndRing) { audio_play_sound(sndRing, 10, false); }
if image_speed == 0 && audio_is_playing(sndRing) { audio_stop_sound(sndRing); }