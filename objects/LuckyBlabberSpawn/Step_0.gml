var postmail = id;
UIControls();

if global.LuckyBlackout = 0 {
	global.LuckyPhaseCheck = 1;
} else {
	global.LuckyPhaseCheck = 0;
};

if global.LuckyPhaseCheck = 1 || global.LuckyPhaseCheck = 2 {
	
	if !instance_exists(Blabber) {
		MenuTimer++;
	};

	if MenuTimer >= MenuResult {
	
		instance_create_depth(0,0,-9999,warpzoneMENU);
	
	};

	if DelayTimer < DelayResult && BlabberLimit = 0 {
		DelayTimer++;
	};

	if DelayTimer >= DelayResult && !instance_exists(Blabber) {

		with instance_create_depth(x,y,-99999,Blabber) {
			
			if global.LuckyPhaseCheck = 1 {
				main_game_text(postmail.introtext);
			} else if global.LuckyPhaseCheck = 2 {
				main_game_text(postmail.finaltext);
			};
		};
	
		BlabberLimit += 1;
		MenuTimer = 0;
	};

	if BlabberLimit > 0 {
		DelayTimer = 0;
		if os_browser { global.W_LuckyYou += 1; };
		global.LuckyCheck += 1;
	};
	
} else if global.LuckyBlackout = 1 {
	
	instance_destroy(luckyrabbit);
	CurrentSong(Alone,0,0);
	
	if input_any_pressed() {
		instance_create_depth(0,0,-999,warpzoneMENU);
	};
	
	global.LuckyCheck = 1;

};