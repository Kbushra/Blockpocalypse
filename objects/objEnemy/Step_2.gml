image_blend = make_color_hsv(0, sat, 255);
sat -= 10;
sat = clamp(sat, 0, 255);

if image_index >= 7 { instance_destroy(); }