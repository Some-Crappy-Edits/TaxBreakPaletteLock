global.GreenDemonX = x;
global.GreenDemonY = y;


if global.inventory = 1 {
	Speed = 2.5;
} else if global.inventory = 2 {
	Speed = 3;
} else if global.inventory = 3 {
	Speed = 3.5;
} else if global.inventory >= 4 {
	Speed = 4;
} else if global.inventory <= 0 {
	Speed = 2;
};

var PrevSpeed = Speed;
if room = Outside {
	if global.inventory >= 1 {
			Speed = 4;
		} else if global.inventory <= 0 {
			Speed = 3.5;
		};
} else {
	Speed = PrevSpeed
};

var PrevX = x;
var PrevY = y;
if global.PauseState = false {
	move_towards_point(floor(playGoop.x),floor(playGoop.y),Speed);
} else {
	x = PrevX;
	y = PrevY;
};

if place_meeting(x,y,playGoop) {
	instance_create_depth(0,0,-99999,warpzoneMENU);
};