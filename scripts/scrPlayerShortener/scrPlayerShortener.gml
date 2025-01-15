function hMoving()
{
	var multiplier = 2 - place_meeting(x, y, objWire);
	return lerp(hMovement, (global.r - global.l)*multiplier, 0.2)
}

function setupDash()
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

function dashMove()
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

function verticalChecks()
{
	if vMovement == 0 { grounded = !place_free(x, y+2); return; } //No vertical movement
	if place_free(x, y+vMovement) { grounded = false; return; } //In the air
	if vMovement < 0 { vMovement = 0; return; } //Bumped head
	
	//Landing on ground
	if vMovement == 10 { instance_create_layer(x, y+20, layer, objShockwave); }
	while place_free(x, y+2) { y++; }
	grounded = true;
	vMovement = 0;
}

function itemManagement()
{
	if global.item == "" { return; }
	
	item = asset_get_index($"obj{global.item}");

	if !global.itemCreated { instance_create_layer(x, y-10, layer, item); global.itemCreated = true; }

	if image_speed == 0 //Not dying
	{
		item.x = x;
		item.y = y-10;
		item.depth = depth - 10;

		item.image_alpha = room != rmFall;
	}

	if global.r { item.image_xscale = -1; }
	if global.l { item.image_xscale = 1; }
}

function hpManagement()
{
	if instance_exists(objTransition) && image_index == 0 { hp = 6; return; }
	
	var protected = collision_rectangle(x-16, 0, x+16, y-16, objSolid, false, true);
	if instance_exists(objNuke) && objNuke.exploded && !protected && room != rmRuins { hp = 0; }

	if hp <= 0
	{
		image_speed = 1;
		if image_index >= image_number-1 { image_index = image_number-1; }
	
		global.movement = false;
		pauseControl();
	}
}