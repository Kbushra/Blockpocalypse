if !objPlayer.dashing || image_alpha == 0 { exit; }

uses -= 1;

hit = true;

with (objPlayer)
{
	other.progX = initialX + xDash - x;
	other.progY = initialY + yDash - y;
	other.initialX = x;
	other.initialY = y;
}