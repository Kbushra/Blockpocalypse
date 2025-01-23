if soundId == -1 { exit; }

//Music start and end
if audio_is_playing(musSubway)
{
	startpoint = 16;
	endpoint = 64;
}

if audio_is_playing(musWar1) && stage == 1
{
	startpoint = 0;
	endpoint = 4.8;
}

if audio_is_playing(musWar1) && stage == 2
{
	startpoint = 15;
	endpoint = 34.2;
}

if audio_is_playing(musWar1) && stage == 3
{
	startpoint = 35.4;
	endpoint = 54.6;
}

//Loop music
var clampPos = clamp(audio_sound_get_track_position(soundId), 0, endpoint);

if audio_sound_get_track_position(soundId) != clampPos
{ audio_sound_set_track_position(soundId, startpoint); }