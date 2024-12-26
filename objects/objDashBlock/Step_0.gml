//-1 = Vertical, 1 = Horizontal

if global.reset && breakId == -1 { uses = maxUses; image_alpha = 1; }
if breakId != -1 && uses <= 0 { global.broken[breakId] = true; }

if hit
{
	objPlayer.canDash = true;
	image_alpha = uses > 0;
	
	//objPlayer.x = lerp(objPlayer.x, initialX - (progX*position), 0.2);
	//objPlayer.y = lerp(objPlayer.x, initialY + (progY*position), 0.2);
	bounceLength--;
	if bounceLength <= 0 { hit = false; }
}

solid = image_alpha;