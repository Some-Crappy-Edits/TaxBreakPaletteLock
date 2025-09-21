UIControls();

if !instance_exists(warp) {
	var WarpState = instance_create_depth(0,0,-9999,warp)
	WarpState.SwapZonez = AllyRoom
	WarpState.target_xx = -99999999999;
	WarpState.target_yy = -99999999999;
	
	global.PauseState = true;
};