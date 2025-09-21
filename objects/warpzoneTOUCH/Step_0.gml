UIControls();

if place_meeting(x,y,playGoop) && !instance_exists(warp) {
	var WarpState = instance_create_depth(0,0,-9999,warp)
	WarpState.SwapZonez = SwapZone;
	WarpState.target_xx = target_x;
	WarpState.target_yy = target_y;
	
	global.PauseState = true;
};