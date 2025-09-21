UIControls()

var postmail = id

if global.GreenDemonMode = 1 {
	visible = false;
} else {
	visible = true;
};


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
	AchievementCheck = 1;
} 

if StopCheck <= 0 {
	if place_meeting (x,y,playGoop) && interactKeyT && BlabberCheck <= 1 && BlabberDelayTimer <= BlabberDelay && playGoop.OnGround = true {
		global.PauseState = true;
		var ConvoCheck = global.oil;
		var ConvoResult = 1;
	
		with instance_create_depth(x,y,-99999,Blabber) {
				if ConvoCheck < ConvoResult {
				main_game_text(postmail.introtext);
				} else if ConvoCheck = ConvoResult {
				main_game_text(postmail.repeattext);
				global.W_OilThief += 1;
			};
		};
	
		BlabberCheck += 1;
	};
};

if BlabberCheck >= 1 && !instance_exists(Blabber) && BlabberDelayTimer <= 1 {
		global.PauseState = false;
		BlabberCheck = 0;
};