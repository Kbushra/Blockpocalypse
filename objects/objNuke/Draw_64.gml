if !active
{
	if room == rmArena2
	{
		draw_set_font(fntGui);
		draw_set_halign(textalign_center);
		draw_text(256, 45, "GET COVER");
		draw_text(256, 77, string( ceil(timer/60) ));
	}

	draw_sprite_ext(sprAirplaneShadow, floor(ind)%2, xPos, 60, 1, 1, 30, c_white, 1);
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

if alpha <= 0 { instance_destroy(); }