Mousey();

if mouseClick && HitCheck <= 0  {
		var WarpState = instance_create_depth(0,0,-9999,warp)
		WarpState.SwapZonez = Menu;
		HitCheck = 1;
}