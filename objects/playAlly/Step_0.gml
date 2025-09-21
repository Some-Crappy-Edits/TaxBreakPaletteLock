


// Inherit the parent event
event_inherited();


//Changing layers when on top of Castle
if global.GreenDemonMode = 0 {
	if place_meeting(x,y,Crossii) && OnGround {
		playAlly.depth = 300;
	} else {
		playAlly.depth = -90;
	};
}


//Prevents Pausing Near NPCs
if global.NoPauseStage = false 
&& !place_meeting(x,y,MsMarrowsNPC) 
&& !place_meeting(x,y,NPCFriendly)
&& !place_meeting(x,y,NPCFriendlyOil) {
	global.NoPauseButton = false;
} else {
	global.NoPauseButton = true;
};

//if !os_browser {
	//if instance_exists(castlePodium) {
		//if !OnGround && place_meeting(x,bbox_top,castlePodium)  {
			//castlePodium.depth = 500;
		//} else if OnGround & yspd <= 3 {
			//castlePodium.depth = -500;
		//};
	//};
//};


//Fly High Achievement
if os_browser {
	
	//Counter
	if room != Menu ||
	room != PostCredits ||
	room != Congrats ||
	room != CongratsEasterEgg ||
	room != SaveFiles ||
	room != SettingsMenu {
		
		if !OnGround && AchieveTime < AchieveResult {
			AchieveTime++;
			LenientDelayTimer = 0;
		};
	
		//If on ground, give leeway for player to recover
		if OnGround {
			LenientDelayTimer++;
		};
	
		//Reset if player stays on ground too long
		if LenientDelayTimer >= LenientDelay  {
			AchieveTime = 0;
			LenientDelayTimer = 0;
		};

		//Get Achievement
		if !OnGround && AchieveTime = AchieveResult && global.FlyHighWin <= 0 {
			global.W_FlyHigh = 1;
		};
	}
};


//Ingredients Achievement
if os_browser {
	
	if global.inventory >= 4 && global.IngredientsWin <= 0 {
		global.W_AllIngredients += 1;
	};
	
};

//Sound Effects


//if abs(xspd) >= moveSpd[1] && PlayedSound = false {
	//DJ_SFXManager.flutters = true;
	//PlayedSound = true;
//} else {
	//WingTimer++;
//};


//if !OnGround && PlayedSound = false && WingTimer < WingResult {
	//DJ_SFXManager.flutters = true;
	//PlayedSound = true;
//} else {
	//WingTimer++;
//};

//if abs(xspd) > 0 && DJ_SFXManager.tiptaps = false && PlayedSound = false && TipTapTimer < TipTapResult && OnGround {
	//DJ_SFXManager.tiptaps = true;
	//PlayedSound = true;
//} else {
	//TipTapTimer++;
//};

//if TipTapTimer >= TipTapResult {
	//PlayedSound = false;
	//TipTapTimer = 0;
//};

//if WingTimer >= WingResult {
	//PlayedSound = false;
	//WingTimer = 0;
//};

//if xspd = 0  {
	//PlayedSound = false;
//};


//Inventory

if place_meeting (x,y,Apple) && shootKey {
	global.inventory += 1;
	global.apple += 1;
	instance_destroy(Apple);
};

if place_meeting (x,y,Oil) && shootKey {
	global.inventory += 1;
	global.oil += 1;
	instance_destroy(Oil);
};

if place_meeting (x,y,Herb) && shootKey {
	global.inventory += 1;
	global.herb += 1;
	instance_destroy(Herb);
};

if place_meeting (x,y,Frog) && shootKey {
	global.inventory += 1;
	global.frog += 1;
	instance_destroy(Frog);
};