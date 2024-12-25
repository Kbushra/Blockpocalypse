function cam_flash(_color, _amount, _hold, _target) {
	
	with(instance_create_layer(0, 0, "Effects", objTransition)) {
		
		amount = _amount;
		hold = _hold;
		target = _target;
		image_blend = _color;
	}
}