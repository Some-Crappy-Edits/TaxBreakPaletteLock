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
	if downKey || upKey || leftKey || rightKey {
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

if page = 3 {
	if input_player_using_gamepad() {
		SwapConfig = "D-Pad";
	} else if input_player_using_keyboard() {
		SwapConfig = "WASD";
	} else {
		SwapConfig = "I don't know lol";
	}
};

//Left and Right for the last two buttons
	
	
	//This is meant for Return to Menu key looping back to Up key,
	//but because you end up on the previous entry
	//when scrolling up, pos has to be set to 9 instead of 10
	
	if page = 3 && pos = 9 && upKey {
		pos = 0;
	};
	
	//These are properly labeled, 9 is fast key, 10 is return to menu
	
	if page = 3 && pos = 10 && downKey {
		pos = 0;
	};
	
	if page = 3 && pos = 9 && leftKey {
		pos = 10;
	};

	if page = 3 && pos = 10 && rightKey {
		pos = 9;
	};


//Left and Right for nearly all buttons
for (var i = 0; i < sprite_length; i++) {
	
	//Buttons on left row
	if page = 3 && pos = i && rightKey && pos < 4 {
		pos = i+4;
	}
	
	//Buttons on right row, up to 8, which has no pair
	if page = 3 && pos = i && leftKey && pos >= 4 && pos < 8 {
		pos = i-4;
	};
	
};

//Adding Delay to Swapping Between Main and Alt Inputs

	if page = 3 && keyboard_check_pressed(vk_backspace) && !input_binding_scan_in_progress() {
		SwapConfigTick = 1;
	};

	if SwapConfigTick = 1 {
		SwapConfigTimer++;
	};

	if SwapConfigTimer >= SwapConfigResult {
		SwapConfigTimer = SwapConfigResult;
	};

	if page = 3 && SwapConfigTimer >= SwapConfigResult {
	
		if SwapConfigMode >= 1 {
			SwapConfigMode = 0;
		} else {
			SwapConfigMode = 1;
		};
	
		SwapConfigTick = 0;
		SwapConfigTimer = 0;
	
	};


if MinteractKey && StopCheck <= 0 {
	
	var PageNmb = page;
	var Xpos = Xposition;
	var Ypos = Yposition;
			
	
	switch(page) {
		
		case 0:
		
			switch(pos) {
	
				case 0: 
					page = 1;
				
				break;
	
				case 1:
					page = 2;
	
				break;
				
				case 2: 
				
					if file_exists("allyprotoTemp.sav") {
						PauseStop.pause = true;
						
						if !instance_exists(warpLOADS) {
							instance_create_depth(0,0,-9999,warpLOADS);
						};
						
						temp_load();
						
					} else {
						instance_create_depth(0,0,-9999,warpzoneMENU);
					};
					
				break;
				
			};
		
		break;
		
		case 1:
			sprite_length = array_length(sprite[1]);
			
			switch(pos) {
				
				case 0: 
				
				if leftKey {
					global.masterVolume -= .01;
				} else if rightKey {
					global.masterVolume += .01;
				} else if MinteractKey {
					exit;
				};
				
				break;
					
				case 1: 
				
				if leftKey || downKey {
					global.musicVolume -= .01;
				} else if rightKey || downKey {
					global.musicVolume += .01;
				} else if MinteractKey {
					exit;
				};
				
				break;
				
				case 2:
				
				if leftKey || downKey {
					global.sfxVolume -= .01;
				} else if rightKey || downKey {
					global.sfxVolume += .01;
				} else if MinteractKey {
					exit;
				};
				
				break;
				
				case 3:
				
					page = 0;
				
				break;
				
			};
			
		break;
		
		case 2:
		
			switch(pos) {
	
				case 0: 
					page = 3;
				
				break;
	
				case 1:
					
					save_rebind();
	
				break;
				
				case 2: 
					
					input_player_reset();
					
				break;
					
				case 3:
					page = 0;
					
				break;
				
			};
		
		break;
		
		
		//Controller Remap
		
		case 3:
		
			switch(pos) {
				
				//Up
				case 0:
					
					if SwapConfigMode >= 1 {
						
						input_binding_scan_start(function(Remap) {
							input_binding_set_safe("up",Remap,0,1);
						});
						
					} else {
						
						input_binding_scan_start(function(Remap) {
							input_binding_set_safe("up",Remap)
						});
					}
					
				break;
				
				//Down
				case 1:
					if SwapConfigMode >= 1 {
						input_binding_scan_start(function(Remap) {
							input_binding_set_safe("down",Remap,0,1);
						});
					} else {
						
						input_binding_scan_start(function(Remap) {
							input_binding_set_safe("down",Remap)
						});
						
					};
				break;
				
				//Left
				case 2: 
				if SwapConfigMode >= 1 {
						
						input_binding_scan_start(function(Remap) {
							input_binding_set_safe("left",Remap,0,1);
						});
						
					} else {
						
						input_binding_scan_start(function(Remap) {
							input_binding_set_safe("left",Remap)
						});
					}
				
				
				break;
				
				//Right
				case 3:
				
					if SwapConfigMode >= 1 {
						
						input_binding_scan_start(function(Remap) {
							input_binding_set_safe("right",Remap,0,1);
						});
						
					} else {
						
						input_binding_scan_start(function(Remap) {
							input_binding_set_safe("right",Remap)
						});
					}
	
				break;
				
				//Run
				case 4: 
					input_binding_scan_start(function(Remap) {
						input_binding_set_safe("run",Remap)
					});
				
				break;
				
				//Jump
				case 5:
					input_binding_scan_start(function(Remap) {
						input_binding_set_safe("jump",Remap)
					});
	
				
				break;
				
				//Action
				case 6:
					input_binding_scan_start(function(Remap) {
						input_binding_set_safe("action",Remap)
					});
				
				break;
				
				//Pause
				case 7:
					input_binding_scan_start(function(Remap) {
						input_binding_set_safe("pause",Remap)
					});
				
				break;
				
				//Menu Action
				case 8:
					input_binding_scan_start(function(Remap) {
						input_binding_set_safe("menuaction",Remap)
					});
				
				break;
				
				//Fast Text
				case 9:
					input_binding_scan_start(function(Remap) {
						input_binding_set_safe("fasttext",Remap)
					});
				
				break;
				
				//Return to Menu
				case 10:
					
					page = 2;
					
				break;
			};
		
		break;
			
	};
	

	
	if PageNmb != page || Xpos != Xposition || Ypos != Yposition { 
		pos = 0;
	};
	
	sprite_length = array_length(sprite[page]);
};






