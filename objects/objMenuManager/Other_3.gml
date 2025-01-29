if file_exists("Blockpocalypse")
{
	ini_open("Blockpocalypse");
	
	ini_write_real("Stats", "High score", global.highScore);
	ini_write_real("Settings", "Game mode", global.gamemode);
	ini_write_real("Settings", "Volume", global.volume);
	
	ini_close();
}