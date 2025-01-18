if !ended || instance_exists(objTransition) { exit; }

draw_sprite(sprTitle, 0, 45, yPos);

yPos = lerp(yPos, 100, 0.05);
	
draw_set_font(fntGui);
	
draw_set_halign(fa_center);
draw_text(256, 242, "No credits because I\nmade everything (:");
draw_text(256, 338, "Press ENTER to continue");

if global.confirm { camFlash(c_black, 0.025, 0, id); }