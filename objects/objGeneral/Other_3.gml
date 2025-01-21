if file_exists("Blockpocalypse")
{
	ini_open("Blockpocalypse");
	ini_write_real("Stats", "High score", global.highScore);
	ini_close();
}