draw_sprite(sprTitle, 0, 45, yPos);

if flag == 2
{
	yPos = lerp(yPos, 100, 0.05);
	
	draw_set_font(fntGui);
	
	draw_set_halign(textalign_center);
	draw_text(256, 338, "Press ENTER to continue");
}
else { yPos = lerp(yPos, -100, 0.05); }