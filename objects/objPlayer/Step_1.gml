if grounded
{
	canDash = false;
	dashed = false;
	
	if place_free(x, y+2) { y++; }
	if !place_free(x, y+1) { y--; }
}
else if !dashed { canDash = true; }

if !place_free(x+1, y) { x--; }
if !place_free(x-1, y) { x++; }


if vMovement != 0
{
	if !place_free(x, y+vMovement)
	{
		if vMovement > 0
		{
			if vMovement == 10 { instance_create_layer(x, y+10, layer, objShockwave); }
	
			grounded = true;
			while place_free(x, y+2) { y++; }
			vMovement = 0;
		}
		else { vMovement = 0; }
	}
	else { grounded = false; }
}
else { grounded = !place_free(x, y+2); }

if !instance_exists(objShockwave)
{
	hMovement = lerp(hMovement, (global.r - global.l)*2, 0.2);
	
	if hMovement != 0 && place_free(x+hMovement, y) { x += hMovement; }
	
	if global.jump
	{
		if grounded
		{
			vMovement = -5.5;
			grounded = false;
		}
		else if canDash
		{
			xDash = global.r - global.l;
			yDash = global.d - global.u;
			xDash *= 60;
			yDash *= 60;
			
			if xDash != 0 || yDash != 0
			{
				initialX = x;
				initialY = y;
				
				dashing = true;
				canDash = false;
				dashLength = 15;
			}
		}
	}
}

if dashing
{
	dashed = true;
	
	var newX = lerp(x, initialX + xDash, 0.2);
	var newY = lerp(y, initialY + yDash, 0.2);
	
	if place_meeting(newX, newY, objSolid) || place_meeting(newX, newY, objDoor)
	{ dashing = false; dashLength = 15; exit; }
	
	x = newX;
	y = newY;
	dashLength--;
	if dashLength <= 0 { dashing = false; dashLength = 15; }
}