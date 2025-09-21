UIControls();
Mousey();

//StopCheck controls menu input, mainly to
//prevent misclicks during screen transitions

//InputDelay also prevents misclicks, notably
//accidentally hitting the save button when going
//back from Settings Menu

if instance_exists(warp) || instance_exists(warpLOADS) {
	StopCheck += 1;
} else {
	InputDelayTimer++;
};

if InputDelayTimer >= InputDelayResult {
	StopCheck = 0;
	InputDelayTimer = 0;
};

if StopCheck <= 0 {
	pos += downKey - upKey;
};

if StopCheck <= 0 {
	if downKey || upKey {
		DJ_SFXManager.click = true;
	};
};

sprite_length = array_length(sprite[page]);

pos = (pos + sprite_length) % sprite_length;

draw_set_valign(y);


if MinteractKey && StopCheck <= 0 {
	
	var PageNmb = page;
	var Xpos = Xposition;
	var Ypos = Yposition;
			
	
	switch(page) {
		
		case 0:
		
			switch(pos) {
	
				case 0: 
					var WarpState = instance_create_depth(0,0,-9999,warpzoneMENU); 
					WarpState.SwapZonez = Menu;
				break;
	
				case 1:
					var WarpState = instance_create_depth(0,0,-9999,warpzoneMENU); 
					WarpState.SwapZonez = Room23;
				break;
			};
		
		break;
		
	};
	
	if PageNmb != page { 
		pos = 0;
	};
	
	sprite_length = array_length(sprite[page]);
};






