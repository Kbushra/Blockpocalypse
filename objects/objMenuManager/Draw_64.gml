if global.movement && !instance_exists(objTransition)
{
	draw_sprite(sprMenuOpener, 0, display_get_gui_width(), 0);
	
	if global.escape { open = !open; selection = 0; }
	
	if open
	{
		instance_deactivate_all(true);
		instance_activate_object(objMusicManager);
		audio_set_master_gain(0, global.volume/2);
	}
	else { instance_activate_all(); audio_set_master_gain(0, global.volume); }
}

if !open { exit; }

draw_sprite_ext(sprTransition, 0, 0, 0, 512, 384, 0, c_black, 0.75);
draw_set_font(fntGui);
draw_set_halign(fa_left);

var col = 0;

if global.gamemode == 0 { var modename = "Normal"; } else { var modename = "Hard"; }
if selection == 0 { col = c_white; } else { col = c_grey; }
draw_text_color(32, 32, $"Gamemode: {modename}", col, col, col, col, 1);

if selection == 1 { col = c_white; } else { col = c_grey; }
draw_text_color(32, 64, $"Volume: {floor(global.volume*100)}", col, col, col, col, 1);

if selection == 2 { col = c_white; } else { col = c_grey; }
draw_text_color(32, 128, "Close game", col, col, col, col, 1);

if selection == 3 { col = c_white; } else { col = c_grey; }
if !twice { draw_text_color(32, 160, "Restart game", col, col, col, col, 1); }
else { draw_text_color(32, 160, "Sure?", col, col, col, col, 1); }