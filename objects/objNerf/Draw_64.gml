if !activated || instance_exists(objTransition) { exit; }

draw_set_halign(fa_center);
draw_set_font(fntGui);

if nerf == 1 { draw_text(256, 30, "Speed nerf"); }
if nerf == 2 { draw_text(256, 30, "Health nerf"); }

draw_set_halign(fa_left);