if global.jump { stuck = false; }
if stuck { vMovement = 0; y = initialY; exit; }

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

verticalChecks();

if !instance_exists(objShockwave)
{
	hMovement = lerp(hMovement, (global.r - global.l)*global.playerSpd, 0.2);
	
	if hMovement != 0 && place_free(x+hMovement, y) { x += hMovement; }
	
	if global.jump
	{
		if grounded { vMovement = -5.5; grounded = false; }
		else if canDash { setupDash(); }
	}
}

if dashing { dashMove(); }
else if audio_is_playing(sndDash) { audio_sound_gain(dashId, 0, 50); }