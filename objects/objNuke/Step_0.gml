if active { y += 20; }
exploded = y >= room_height;

if exploded
{
	if sound2 == -1 { sound2 = audio_play_sound(sndNuke, 10, false); }
	audio_sound_gain(sound2, 0, 4000);
}