if collision_rectangle(x-80, y-16, x+80, y+16, objBullet, false, true) && grounded
{ vMovement = -5.5; grounded = false; }

hMovement = lerp(hMovement, dir*2, 0.2);

vMovement += 0.2;
vMovement = clamp(vMovement, -10, 10);

if grounded { vMovement = 0; }

if place_free(x+hMovement, y) { x += hMovement; }
x = clamp(x, boundXMin, boundXMax);

if !place_free(x, y+vMovement)
{
	if vMovement > 0
	{	
		while place_free(x, y+1) { y++; }
		vMovement = 0;
		grounded = true;
	}
	else { vMovement = 0; }
}

y += vMovement;

if x == boundXMin { dir = 1; }
if x == boundXMax { dir = -1; }