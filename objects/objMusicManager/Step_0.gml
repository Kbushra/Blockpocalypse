//Play music
if room != rmFall && audio_is_playing(sndWind) { audio_stop_sound(sndWind); }
if room == rmSubway && !audio_is_playing(musSubway) { soundId = audio_play_sound(musSubway, 10, true); }
if room == rmStaircase { audio_sound_gain(soundId, objPlayer.y/960, 100); }
if room == rmGunBreak && audio_is_playing(musSubway) { audio_stop_sound(musSubway); soundId = -1; }

if global.item == "Gun" && room == rmGunBreak && stage == 0
{ stage = 1; soundId = audio_play_sound(musWar1, 10, true); }
if room == rmArena1 && stage == 1 { stage = 2; audio_sound_set_track_position(soundId, 5.4); }
if room == rmArena2 && stage == 2 { stage = 3; audio_sound_set_track_position(soundId, 35.4); }
if room == rmNoMan && stage == 3 { stage = 0; audio_sound_gain(soundId, 0, 2000); }

if room == rmHospital && audio_is_playing(musWar1) { audio_stop_sound(musWar1); }