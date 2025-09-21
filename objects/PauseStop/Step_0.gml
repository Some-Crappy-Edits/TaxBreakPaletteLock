UIControls();

//Pausing Event
if escKey && !instance_exists(Blabber) {

	if global.NoPauseButton = false {
		if !pause {
			pause = true;
			global.PauseState = true;
			time_source_pause(TickTock.Clock);
			instance_deactivate_all(true);
		
			//Reactivate shit needed for pause and saving
			instance_activate_object(input_controller_object);
			instance_activate_object(lagytu);
			instance_activate_object(GlobalValues);
			instance_activate_object(DJ_MusicManager);
			instance_activate_object(DJ_SFXManager);
			instance_activate_object(debugClock);
		
		} else if !instance_exists(warp) || !instance_exists(warpLOADS) {
			pause = false;
			instance_activate_all();
			time_source_resume(TickTock.Clock)
			global.PauseState = false;
		};
	} else {
		exit;
	};
};


