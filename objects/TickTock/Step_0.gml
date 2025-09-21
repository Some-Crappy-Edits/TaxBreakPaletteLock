/// @description Insert description here
// You can write your code in this editor

Controllers();
MoveDir = rightKeyPressed - leftKeyPressed;

if time_source_get_time_remaining(Clock) < 120 {
	IdleResult = 3400;
};

if leftKeyPressed || rightKeyPressed {
	IdleTimer = 0;
	IdleCheck = 0;
} else {
	IdleCheck = 1;
};

if IdleCheck = 1 {
	IdleTimer++;
} else {
	IdleTimer = 0;
};

if IdleTimer >= IdleResult {
	global.Score += 99999999999999999999999999999999999999999999999999;
	IdleTimer = 0;
	IdleCheck = 0;
};







