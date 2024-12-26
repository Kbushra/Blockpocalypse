if vMovement != 0
{
	if !place_free(x, y+vMovement)
	{
		if vMovement > 0
		{
			if vMovement == 10 { instance_create_layer(x, y, layer, objShockwave); }
	
			grounded = true;
			while !place_free(x, y+vMovement) { vMovement--; }
			y += vMovement;
			vMovement = 0;
		}
		else { vMovement = 0; }
	}
	else { grounded = false; }
}
else { grounded = !place_free(x, y+20); }

if !instance_exists(objShockwave)
{
	hMovement = lerp(hMovement, (global.r - global.l)*2, 0.2);
	
	if hMovement != 0
	{
		while !place_free(x+hMovement, y) { x -= hMovement; }
		x += hMovement;
	}
	
	if global.jump
	{
		if grounded
		{
			vMovement = -5.5;
			grounded = false;
			canDash = true;
		}
		else if canDash
		{
			xDash = global.r - global.l;
			yDash = global.d - global.u;
			xDash *= 60;
			yDash *= 60;
			
			initialX = x;
			initialY = y;
			
			if xDash != 0 || yDash != 0 { dashing = true; canDash = false; }
		}
	}
}

if dashing
{
	var newX = lerp(x, initialX + xDash, 0.2);
	var newY = lerp(y, initialY + yDash, 0.2);
	
	if !place_free(newX, newY) && !place_meeting(newX, newY, objDashBlock)
	{ dashing = false; dashLength = 15; exit; }
	
	x = newX;
	y = newY;
	dashLength--;
	if dashLength <= 0 { dashing = false; dashLength = 15; }
}