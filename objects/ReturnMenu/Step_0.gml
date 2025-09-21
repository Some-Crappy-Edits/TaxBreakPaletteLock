UIControls();
Mousey();

if os_browser {
	sprite[page,2] = aly_idle;
};
	

pos += downKey - upKey;

sprite_length = array_length(sprite[page]);

pos = (pos + sprite_length) % sprite_length;

draw_set_valign(fa_top);
draw_set_halign(fa_left);

if pos = 2 && os_browser {
	pos = 0;
};


if MinteractKey {
	
	var PageNmb = page;
	var Xpos = Xposition;
	var Ypos = Yposition;
			
	
	switch(page) {
		
		case 0:
		
			switch(pos) {
	
				case 0: 
					instance_create_depth(0,0,-999,warpzoneMENU);
				break;
				
			};
		
		break;
		
	};
	
	if PageNmb != page { 
		pos = 0;
	};
};






