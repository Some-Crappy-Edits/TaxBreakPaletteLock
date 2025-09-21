TimesUp = function() {
	
	if global.Score <= 100000 && global.Score > 0 {
		var WarpState = instance_create_depth(0,0,-9999,warp)
		WarpState.SwapZonez = GameOver;
	} else if global.Score = 0 {
		var WarpState = instance_create_depth(0,0,-9999,warp)
		WarpState.SwapZonez = EndingZero;
	} else if global.Score < 0 {
		var WarpState = instance_create_depth(0,0,-9999,warp)
		WarpState.SwapZonez = EndingWin;
	} else if global.Score > 1000000 {
		var WarpState = instance_create_depth(0,0,-9999,warp)
		WarpState.SwapZonez = EndingTaxFraud;
	} else {
		var WarpState = instance_create_depth(0,0,-9999,warp)
		WarpState.SwapZonez = Menu;
	};
	
};

Clock = time_source_create(time_source_game,242,time_source_units_seconds,TimesUp)

time_source_start(Clock);

//242

MoveDir = 0


IdleTimer = 0;
IdleResult = 7200;
IdleCheck = 0;

