var intro = room == rmSubway || room == rmKeyCard;
if global.item == "KeyCard" && intro && !instance_exists(objTransition)
{
	draw_set_font(fntGui);
	
	draw_set_halign(textalign_center);
	draw_text(256, 30, "Return to entrance");
}

if room == rmHouse && !instance_exists(objTransition)
{
	draw_set_font(fntGui);
	
	draw_set_halign(textalign_center);
	draw_text(256, 30, "Before war");
}

if global.training && global.item = "Gun" && global.bullets != -1
{ draw_text(32, 4, $"{global.bullets}/{global.maxBullets}"); }