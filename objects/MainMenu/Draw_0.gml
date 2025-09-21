draw_set_halign(x);

if !os_browser {
	draw_set_font(large_dialogue_font)
} else {
	draw_set_font(html_dialogue_font)
};


for (var i = 0; i < sprite_length; i++) {
	var White = make_color_rgb(252,255,192)
	var Pink = make_color_rgb(110,184,168);
	var Color = Pink;
	var SpriteIndex = 0;
	
	if pos = i { 
		Color = White;
	}
	
	draw_text_color(Xposition[page, i],Yposition[page, i],sprite[page, i],Color,Color,Color,Color,1);
	
};