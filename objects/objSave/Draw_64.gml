if !firstCollision
{
	draw_set_font(fntGui);
	draw_set_halign(textalign_center);
	
	draw_text_color(256, 32, "Game saved", c_white, c_white, c_white, c_white, alpha);
	alpha -= 0.01;
}