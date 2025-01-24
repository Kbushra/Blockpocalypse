if !active
{
	if sound1 == -1 { sound1 = audio_play_sound(sndHelicopter, 10, false); }
	else { audio_sound_gain(sound1, 0, 6000); }
	
	if room == rmArena2
	{
		draw_set_font(fntGui);
		draw_set_halign(fa_center);
		draw_text(256, 45, "GET COVER");
		draw_text(256, 77, string( ceil(timer/60) ));
	}
	
	if room != rmRuins
	{ draw_sprite_ext(sprAirplaneShadow, floor(ind)%2, xPos, 60, 1, 1, 30, c_white, 1); }
	else { draw_sprite_ext(sprAirplane2, floor(ind)%2, xPos+100, 60, 0.5, 0.5, 30, c_white, 1); }
	
	ind += 0.185;
	xPos -= 5;
	timer--;
	
	x = objPlayer.x;
	
	if timer <= 0 { active = true; }
}

if y >= room_height
{
	draw_sprite_ext(sprTransition, 0, 0, 0, 512, 384, 0, c_white, alpha);
	if !memo { alpha += 0.05; } else { alpha -= 0.05; }
	if alpha >= 2 { memo = true; }
}

if alpha > 1.5 && room == rmRuins
{
	room_goto(rmEnding);
	global.item = "";
	global.itemCreated = false;
	instance_destroy(objGun);
}
if alpha <= 0 { instance_destroy(); }