draw_set_font(large_dialogue_font);

if TextTimer < TextResult {
	draw_text_transformed(70,70,"Saving Complete!",1,1,0);
	TextTimer++;
} else {
	instance_destroy();
};









