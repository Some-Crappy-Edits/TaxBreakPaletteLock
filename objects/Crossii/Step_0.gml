if CloseCheck = 1 {
	CloseTimer++;
} else {
	CloseTimer = 0;
};

if CloseTimer >= CloseResult {
	Teleport = 1;
};

if Teleport = 1 {
	room_goto(GameOver);
};

//if CloseTimer = CloseResult/2 {
//	DJ_SFXManager