vMovement += 0.2;
vMovement = clamp(vMovement, -10, 10);

if grounded { vMovement = 0; }

y += vMovement;

if dashing && yDash <= 0
{
	image_xscale = 1;
	image_yscale = 1;
	vMovement = 0;
	hMovement = 0;
	
	exit;
}

if vMovement > 0
{
	image_xscale -= 0.01;
	image_yscale += 0.01;

	image_xscale = clamp(image_xscale, 0.5, 1);
	image_yscale = clamp(image_yscale, 1, 2);
	
	if vMovement == 10 { hardLanding = true; }
}
else
{
	if hardLanding
	{
		grounded = true;
		
		image_xscale = lerp(image_xscale, 2, 0.2);
		image_yscale = lerp(image_yscale, 0.5, 0.2);
		
		if image_xscale > 1.8 { hardLanding = false; }
		exit;
	}
	
	image_xscale = lerp(image_xscale, 1, 0.1);
	image_yscale = lerp(image_yscale, 1, 0.1);
}