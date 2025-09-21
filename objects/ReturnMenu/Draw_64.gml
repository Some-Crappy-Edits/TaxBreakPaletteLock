draw_set_halign(x);

for (var i = 0; i < sprite_length; i++) {
	
	var Color = c_white;
	var SpriteIndex = 0;
	
	if pos = i { 
		SpriteIndex = 1;
	}
	
	draw_sprite_ext(sprite[page, i],SpriteIndex,Xposition[page, i],Yposition[page, i],image_xscale,image_yscale,0,Color,1);
	
};
