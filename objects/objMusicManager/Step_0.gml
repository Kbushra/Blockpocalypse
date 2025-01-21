//Play music
if room != rmFall && audio_is_playing(sndWind) { audio_stop_sound(sndWind); }
if room == rmSubway && !audio_is_playing(musSubway) { soundId = audio_play_sound(musSubway, 10, false); }
if room == rmStaircase { audio_sound_gain(soundId, objPlayer.y/960, 100); }
if room == rmGunBreak && audio_is_playing(musSubway) { audio_stop_sound(musSubway); soundId = -1; }