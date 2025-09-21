UIControls();
Mousey();

pos += rightKey - leftKey;

sprite_length = array_length(sprite[page]);

pos = (pos + sprite_length) % sprite_length;

draw_set_valign(fa_top);
draw_set_halign(fa_left);

if downKey || upKey {
	DJ_SFXManager.click = true;
};


if MinteractKey {
	
	var PageNmb = page;
	var Xpos = Xposition;
	var Ypos = Yposition;
			
	
	switch(page) {
		
		case 0:
		
			switch(pos) {
	
				case 0: 
					load_game(0);
				
				break;
	
				case 1:
				
					if !file_exists("allyproto1.sav") {
							var WarpState = instance_create_depth(0,0,-9999,warp)
							WarpState.SwapZonez = AllyRoom;
							WarpState.target_xx = -99999999;
							WarpState.target_yy = -99999999;
							
							global.SaveFile += 1;
					} else {
						load_game(1);
					};
	
				break;
	
				case 2: 
					if !file_exists("allyproto2.sav") {
							var WarpState = instance_create_depth(0,0,-9999,warp)
							WarpState.SwapZonez = AllyRoom;
							WarpState.target_xx = -99999999;
							WarpState.target_yy = -99999999;
							
							global.SaveFile += 2;
					} else {
						load_game(2);
					};
	
					
				break;
				
			};
		
		break;
		
		//case 1:
			//sprite_length = array_length(sprite[1]);
			
			//switch(pos) {
				
				//case 0: 
				//page = 0; 
				
				//break;
					
				//case 1: game_end(); break;
				
			//};
			
		//break;
		
		
	};
	
	if PageNmb != page { 
		pos = 0;
	};
};






