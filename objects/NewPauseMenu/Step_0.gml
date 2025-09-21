UIControls();
Mousey();

//StopCheck controls menu input, mainly to
//prevent misclicks during screen transitions

if instance_exists(warp) || instance_exists(warpLOADS) {
	StopCheck += 1;
} else {
	StopCheck = 0;
};

if StopCheck <= 0 {
	if downKey || upKey {
		DJ_SFXManager.click = true;
	};
};
	
if StopCheck <= 0 {
	pos += downKey - upKey;
};

sprite_length = array_length(sprite[page]);

pos = (pos + sprite_length) % sprite_length;

draw_set_valign(fa_top);
draw_set_halign(fa_left);


//Skipping Over Green Demon & Exit Button

if pos = 4 && os_browser {
	pos = 0;
};


if MinteractKey && StopCheck <= 0 {
	
	var PageNmb = page;
	var Xpos = Xposition;
	var Ypos = Yposition;
			
	
	switch(page) {
		
		case 0:
		
			switch(pos) {
	
				case 0: 
					var WarpState = instance_create_depth(0,0,-9999,warp)
					WarpState.SwapZonez = Menu;
				break;
	
				case 1:
					var WarpState = instance_create_depth(0,0,-9999,warp)
					WarpState.SwapZonez = TransRoom;
				break;

				
			};
			
		break;
		
		
	};
	
	if PageNmb != page { 
		pos = 0;
	};
};






