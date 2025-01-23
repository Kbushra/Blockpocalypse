if collide { exit; }

timer--;
if timer <= 0
{ instance_create_layer(objPlayer.x, -400, "Instances", objNuke); timer = irandom_range(900, 1200); }