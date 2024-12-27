//-1 = Vertical, 1 = Horizontal

if global.reset && breakId == -1 { uses = maxUses; broken = false; }
if breakId != -1 && uses <= 0 { global.broken[breakId] = true; }

if hit
{
	objPlayer.canDash = true;
	broken = uses <= 0;
	
	//objPlayer.x = lerp(objPlayer.x, initialX - (progX*position), 0.2);
	//objPlayer.y = lerp(objPlayer.x, initialY + (progY*position), 0.2);
	bounceLength--;
	if bounceLength <= 0 { hit = false; }
}

solid = !broken;

if !broken
{
	if sprite_index != normSprite { sprite_index = normSprite; }
	exit;
}

if sprite_index != breakSprite { sprite_index = breakSprite; }
if image_index >= image_number - 1 { image_index = image_number - 1; }