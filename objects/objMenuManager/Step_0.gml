if !open { exit; }

if u { selection--; }
if d { selection++; }

selection %= 4;
if selection < 0 { selection += 4; }

var lOrR = l || r;
if selection == 0 && lOrR { global.gamemode = !global.gamemode; }

if selection == 1 && global.r - global.l != 0
{
	global.volume += (global.r - global.l)/100;
	global.volume = clamp(global.volume, 0, 1);
	audio_set_master_gain(0, global.volume/2);
}

if selection == 2 && global.confirm { game_end(); }

if selection == 3 && global.confirm
{
	if twice
	{
		if file_exists("Blockpocalypse") { file_delete("Blockpocalypse"); }
		game_restart();
	}
	
	twice = true;
}
else if selection != 3 { twice = false; }