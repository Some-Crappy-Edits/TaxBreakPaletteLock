
draw_set_font(large_dialogue_font);

for (var i = 0; i < sprite_length; i++) {
	
	var Color = c_white;
	var SpriteIndex = 0;
	
	if pos = i { 
		SpriteIndex = 1;
	}
	
	draw_sprite_ext(sprite[page, i],SpriteIndex,Xposition[page, i],Yposition[page, i],image_xscale,image_yscale,0,Color,1);
};

if page = 3 {
	
	
	if SwapConfigMode >= 1 {
		draw_text(64,64,"Alternative Inputs (" + SwapConfig + ")" )
	} else {
		draw_text(64,64,"Main Inputs")
	};
	
	//WASD Keys / D-Pad 
	for (var i = 0; i < alt_length; i++) {

		var InputName = input_binding_get(buttonMapAlt[i],0,1);
		var Input = input_binding_get_icon(InputName);
		
		if is_string(Input) {
			draw_text(Xposition[page, i]+500,Yposition[page, i]+10,Input);
		} else {
			draw_sprite_ext(Input,0,Xposition[page, i]+500,Yposition[page, i]+10,1.5,1.5,image_angle,c_white,1);
		};
		
	};

	//Every Other Key
	for (var i = 0; i < sprite_length; i++) {
		
		var InputName = input_binding_get(buttonMap[i]);
		var Input = input_binding_get_icon(InputName);
		
		if is_string(Input) {
			
			//Removes Icon from Menu Return Key
			array_push(buttonMap,10);
			
			if i !=  array_last(buttonMap) {
				draw_text(Xposition[page, i]+400,Yposition[page, i]+10,Input);
			} else {
				exit;
			};
			
		} else {
			draw_sprite_ext(Input,0,Xposition[page, i]+400,Yposition[page, i]+10,1.5,1.5,image_angle,c_white,1);
		};
		
	};
	
};
