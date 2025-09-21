UIControls();

if !instance_exists(warp) {
	var WarpState = instance_create_depth(0,0,-9999,warp);
	WarpState.SwapZonez = PostCredits;
	WarpState.target_xx = -999999;
	WarpState.target_yy = -999999;
	
	global.PauseState = true;
}