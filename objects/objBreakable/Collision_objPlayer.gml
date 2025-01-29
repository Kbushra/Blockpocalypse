if !objPlayer.dashing || broken || hit { exit; }

if !infUses
{
	uses -= 1;
	
	if uses > 0
	{
		with (objPlayer)
		{
			if xDash != 0 { var signX = xDash/abs(xDash); } else { var signX = 0; }
			if yDash != 0 { var signY = yDash/abs(yDash); } else { var signY = 0; }
		
			while !place_meeting(x+signX, y+signY, other)
			{
				x += signX;
				y += signY;
			}
		}
		
		objPlayer.dashLength = 0;
	}
}
else
{
	with (objPlayer)
	{
		if xDash != 0 { var signX = xDash/abs(xDash); } else { var signX = 0; }
		if yDash != 0 { var signY = yDash/abs(yDash); } else { var signY = 0; }
		
		while !place_meeting(x+signX, y+signY, other)
		{
			x += signX;
			y += signY;
		}
	}
}

hit = true;

wobbleTimer = 20;

objPlayer.stuck = sticky;
objPlayer.initialY = objPlayer.y;