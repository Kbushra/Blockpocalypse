if objPlayer.image_index >= objPlayer.image_number-1 && !instance_exists(objDeath)
{ instance_create_layer(0, 0, "Effects", objDeath); }

if room == rmTrainingTutorial && !global.training
{
	global.training = true;
	objPlayer.sprite_index = sprPlayerTrain;
	objPlayer.image_speed = 0;
}