if soundId == -1 { exit; }

//Music start and end
if audio_is_playing(musSubway)
{
	startpoint = 16;
	endpoint = 64;
}

//Loop music
var clampPos = clamp(audio_sound_get_track_position(soundId), 0, endpoint);

if audio_sound_get_track_position(soundId) != clampPos
{ audio_sound_set_track_position(soundId, startpoint); }