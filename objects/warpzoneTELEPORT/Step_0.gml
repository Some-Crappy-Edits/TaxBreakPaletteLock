if place_meeting(x,y,playGoop) {
	var WarpState = instance_create_depth(0,0,-9999,warpTELEPORT);
	WarpState.target_xx = target_x;
	WarpState.target_yy = target_y;
	
	playGoop.xspd = 0;
	playGoop.yspd = 0;
	
	global.PauseState = true;
};