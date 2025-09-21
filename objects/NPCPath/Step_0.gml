
//Prevents Snapping into Other Path too early
if DontTouch = true && path_position = 1 {
	DontTouchCheck = 1;
};

if DontTouchCheck >= 1 {
	DontTouchTimer++;
};

if DontTouchTimer >= DontTouchResult {
	DontTouch = false;
	DontTouchCheck = 0;
	DontTouchTimer = 0;
};

//Despawns Birdy if off screen for too long
//May not use this as it's unnecessary

//if DeSpawnTimer >= DeSpawnResult && PathCheck > 0 {
//	path_position = 0;
//	x = StartX;
//	y = StartY;
//	PathCheck = 0;
//	DeSpawnTimer = 0;
//	global.DeSpawnCheck = 0;
//	global.OOBCheck = 0;
//}

	for (var i = 0; i < PathListLength; i++) {
	
		var LastPath = array_length(PathList)-1;
	
		if PathCheck = i && place_meeting(x,y,playGoop) && DontTouch = false {
			path_start(PathList[i],PathSpeed[i],path_action_stop,true);
			DontTouch = true;
		} else if path_position = 1 && i = LastPath {
			path_position = 0;
			PathCheck = 0;
			i = 0;
		} else if path_position = 1 && PathCheck = i {
			path_position = 0;
			PathCheck = i+1;
		};

	};

if MoveDir != 0 { face = MoveDir };

if direction > 90 && direction < 270 {
	MoveDir = -1;
} else {
	MoveDir = 1;
};

if path_position > 0 && path_position < 1 {
		sprite_index = FlySprite
} else {
		sprite_index = IdleSprite
}