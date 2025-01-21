if !solid
{
	if !moving { audio_play_sound(sndKeycardOpen, 10, false); }
	moving = true;
	global.opened[num] = true;
}