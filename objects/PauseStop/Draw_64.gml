
if pause = true {
	
	if !instance_exists(NewPauseMenu) {
		instance_create_depth(0,0,-100,NewPauseMenu);
	};
	
	if !instance_exists(PauseBGUI) {
		instance_create_depth(0,0,-98,PauseBGUI)
	};
	
} else if !instance_exists(warp) || !instance_exists(warpLOADS) {
	
	if instance_exists(NewPauseMenu) && instance_exists(PauseBGUI) {
		instance_destroy(NewPauseMenu);
		instance_destroy(PauseBGUI);
	};
};


