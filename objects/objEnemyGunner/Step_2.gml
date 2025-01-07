image_blend = make_color_hsv(0, sat, 255);
sat -= 10;
sat = clamp(sat, 0, 255);

if image_index >= 7 { instance_destroy(); }
if image_speed == 1 { weapon.dead = true; }

iframes--;

var protected = collision_rectangle(x-16, 0, x+16, y-16, objSolid, false, true);
if instance_exists(objNuke) && objNuke.exploded && !protected { hp = 0; image_speed = 1; }