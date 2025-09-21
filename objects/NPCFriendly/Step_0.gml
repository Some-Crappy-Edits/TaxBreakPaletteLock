UIControls()

if global.GreenDemonMode = 1 {
	instance_destroy();
} else {
	exit;
};

var postmail = id

if instance_exists(warp) || instance_exists(warpLOADS) {
	StopCheck = 1;
} else {
	StopCheck = 0;
};

if interactKeyT {
	BlabberDelayTimer = BlabberDelay;
}

if place_meeting(x,y,playGoop) && interactKeyT && instance_exists(Blabber) && AchievementCheck <= 0 && StopCheck <= 0 {
	AchievementCheck = 1;
	global.W_Socialite += AchievementCheck;
};

if BlabberDelayTimer > 0 {
	BlabberDelayTimer--;
} 

if StopCheck <= 0 {
	if place_meeting (x,y,playGoop) && interactKeyT && BlabberCheck <= 1 && BlabberDelayTimer <= BlabberDelay && playGoop.OnGround = true {
		global.PauseState = true;
	
		with instance_create_depth(x,y,-99999,Blabber) {
			main_game_text(postmail.introtext);
		}
	
		BlabberCheck += 1;
		//PauseCheck += 1;
	}
} else {
	exit;
};

if BlabberCheck >= 1 && !instance_exists(Blabber) && BlabberDelayTimer <= 1 {
		global.PauseState = false;
		BlabberCheck = 0;
};
