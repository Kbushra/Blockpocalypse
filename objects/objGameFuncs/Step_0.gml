if !halfMemo { exit; }

if func == 1
{
	if file_exists("Blockpocalypse") { file_delete("Blockpocalypse"); }
	game_restart();
}

if func == 2 { game_end(); }