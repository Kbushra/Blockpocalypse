if soundId == -1 { exit; }

//Music start and end
if audio_is_playing(musSubway)
{
	startpoint = 16;
	endpoint = 64;
}

if audio_is_playing(musWar1)
{
	switch (stage)
	{
		case 1:
			startpoint = 0;
			endpoint = 4.8;
			break;
		case 2:
			startpoint = 15;
			endpoint = 34.2;
			break;
		case 3:
			startpoint = 35.4;
			endpoint = 54.6;
			break;
	}
}

if audio_is_playing(musWar2)
{
	switch (stage)
	{
		case 1:
			startpoint = 0;
			endpoint = 9.6;
			break;
		case 2:
			startpoint = 10.8;
			endpoint = 30;
			break;
		case 3:
			startpoint = 31.2;
			endpoint = 50.4;
			break;
	}
}

if audio_is_playing(musWar3)
{
	switch (stage)
	{
		case 1:
			startpoint = 0;
			endpoint = 9.6;
			break;
		case 2:
			startpoint = 10.8;
			endpoint = 68.4;
			break;
	}
}

//Loop music
var trackpos = audio_sound_get_track_position(soundId);
var clampPos = clamp(trackpos, 0, endpoint);

if trackpos != clampPos
{ audio_sound_set_track_position(soundId, startpoint); }