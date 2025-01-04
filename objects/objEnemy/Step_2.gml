image_blend = make_color_hsv(0, sat, 255);
sat -= 10;
sat = clamp(sat, 0, 255);

if image_index >= 7 { instance_destroy(); }

iframes--;

if instance_exists(objNuke) && objNuke.exploded && !collision_rectangle(x-16, 0, x+16, y-16, objSolid, false, true)
{ hp = 0; image_speed = 1; }