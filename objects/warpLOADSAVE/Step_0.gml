if AnimationCheck >= 1 {
	AnimationTime++;
};

if image_speed = -1 && image_index < 1 {
	global.LoadSaveGame += 1;
	AnimationTime = 0;
	AnimationCheck = 0;
	instance_destroy();
};