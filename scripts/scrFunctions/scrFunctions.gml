function camFlash(_color, _amount, _hold, _target)
{
	with(instance_create_layer(0, 0, "Effects", objTransition)) {
		
		amount = _amount;
		hold = _hold;
		target = _target;
		image_blend = _color;
	}
}

function colourManagement()
{
	image_blend = make_color_hsv(0, sat, 255);
	if sat == 255 && image_speed == 0 { audio_play_sound(sndHit, 10, false); }
	sat -= 10;
	sat = clamp(sat, 0, 255);
}

function pauseControl()
{
	global.confirm = false;
	global.jump = false;
	
	global.l = false;
	global.r = false;
	global.u = false;
	global.d = false;
}