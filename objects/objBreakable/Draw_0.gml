wobbleTimer--;
if wobbleTimer <= 0 || infUses || broken { draw_self(); exit; }

draw_sprite_ext(sprite_index, image_index, x+choose(1,0,-1), y+choose(1,0,-1), image_xscale,
	image_yscale, image_angle, image_blend, image_alpha);