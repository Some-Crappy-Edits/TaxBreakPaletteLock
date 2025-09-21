if !os_browser {
	draw_set_font(large_dialogue_font);
} else {
	draw_set_font(html_dialogue_font);
};

//Pink Color
//var TextColor = make_color_rgb(198,80,90)
var TextColor = make_color_rgb(47,20,47)
draw_set_color(TextColor);

draw_text_ext_transformed(BorderX,BorderY,"$" + string(global.Score),1,100,1,1.5,1);






