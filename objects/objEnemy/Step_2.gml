colourManagement();

if image_index >= 7 { instance_destroy(); }

iframes--;

if instance_exists(objNuke) && objNuke.exploded && !collision_rectangle(x-16, 0, x+16, y-16, objSolid, false, true)
{ hp = 0; image_speed = 1; }