//Play music
if room != rmFall && audio_is_playing(sndWind) { audio_stop_sound(sndWind); }
if room == rmSubway && !audio_is_playing(musSubway) { soundId = audio_play_sound(musSubway, 10, true); }
if room == rmStaircase && instance_exists(objPlayer) { audio_sound_gain(soundId, objPlayer.y/960, 100); }
if room == rmGunBreak && audio_is_playing(musSubway) { audio_stop_sound(musSubway); soundId = -1; }

if global.item == "Gun" && room == rmGunBreak && stage == 0
{ stage = 1; soundId = audio_play_sound(musWar1, 10, true); }
if room == rmArena1 && stage == 1 { stage = 2; audio_sound_set_track_position(soundId, 5.4); }
if room == rmArena2 && stage == 2 { stage = 3; audio_sound_set_track_position(soundId, 35.4); }
if room == rmNoMan && stage == 3 { stage = 0; audio_sound_gain(soundId, 0, 2000); }

if room == rmHospital
{
	if audio_is_playing(musWar1) { audio_stop_sound(musWar1); }
	if !audio_is_playing(musHospital) { soundId = audio_play_sound(musHospital, 10, false); }
}

if room == rmArena3
{
	if stage == 0
	{
		audio_stop_sound(musHospital);
		
		stage = 2;
		soundId = audio_play_sound(musWar2, 10, false);
		audio_sound_gain(soundId, 0, 0);
		audio_sound_set_track_position(soundId, 10.8);
	}
	else if instance_exists(objPlayer) && audio_sound_get_gain(soundId) < objPlayer.y/688
	{ audio_sound_gain(soundId, objPlayer.y/688, 0); }
}

if room == rmWire && stage == 2 { stage = 1; audio_sound_set_track_position(soundId, 0); }
if room == rmArena4 && stage = 1 { stage = 3; audio_sound_set_track_position(soundId, 31.2); }

if room == rmWarzoneRest
{	
	if audio_is_playing(musWar2)
	{
		stage = 0;
		audio_sound_gain(soundId, 0, 1000);
		if audio_sound_get_gain(soundId) <= 0.05 { audio_stop_sound(soundId); soundId = -1; }
	}
	else if !audio_is_playing(musRadio)
	{
		soundId = audio_play_sound(musRadio, 10, false);
		audio_sound_gain(soundId, 0, 0);
	}
	else { audio_sound_gain(soundId, 1, 2000); }
}

if room == rmCorridor
{
	if global.item != "Gun" && stage == 0 { stage = 1; soundId = audio_play_sound(musWar3, 10, false); }
	if audio_is_playing(musRadio) { audio_stop_sound(musRadio); soundId = -1; }
}

if room == rmArenaFinale && stage == 1 { stage = 2; audio_sound_set_track_position(soundId, 10.8); }
if room == rmRuins
{
	if stage == 2 { stage = 1; audio_sound_set_track_position(soundId, 0); }
	if instance_exists(objPlayer) { audio_sound_gain(soundId, (objPlayer.x-1000)/3072, 100); }
}
if room == rmEnding && audio_is_playing(musWar3) { audio_stop_sound(musWar3); soundId = -1; stage = 0; }

if global.training
{
	if stage == 0 { stage = 1; soundId = audio_play_sound(musWar4, 10, false); }
	
	if room != rmTrainingTutorial && room != rmSpeedNerf && room != rmHealthNerf
	{ if stage == 1 { stage = 2; audio_sound_set_track_position(soundId, 10.8); } }
	else if stage == 2 { stage = 1; audio_sound_set_track_position(soundId, 0); }
}

if stage > 1 && !audio_is_playing(sndWarAtmo) { audio_play_sound(sndWarAtmo, 10, true); }
if stage <= 1 && audio_is_playing(sndWarAtmo) { audio_stop_sound(sndWarAtmo); }