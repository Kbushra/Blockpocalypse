//-1 = Vertical, 1 = Horizontal

if global.reset { uses = maxUses; image_alpha = 1; }

if hit
{
	objPlayer.canDash = true;
	if uses == 0 { image_alpha = 0; }
	
	//objPlayer.x = lerp(objPlayer.x, initialX - (progX*position), 0.2);
	//objPlayer.y = lerp(objPlayer.x, initialY + (progY*position), 0.2);
	bounceLength--;
	if bounceLength <= 0 { hit = false; }
}

solid = image_alpha;