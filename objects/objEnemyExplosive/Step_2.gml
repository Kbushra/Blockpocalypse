image_blend = make_color_hsv(0, sat, 255);
sat -= 10;
sat = clamp(sat, 0, 255);

grounded = !place_free(x, y+1);

if image_index >= 7 { instance_destroy(); }

timer--;
if timer <= 0 { instance_create_layer(x, y, "Instances", objMine); timer = irandom_range(120, 240); }

iframes--;

if instance_exists(objNuke) && objNuke.exploded && !collision_rectangle(x-16, 0, x+16, y-16, objSolid, false, true)
{ hp = 0; image_speed = 1; }