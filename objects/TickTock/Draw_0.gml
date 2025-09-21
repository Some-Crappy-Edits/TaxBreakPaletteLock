draw_set_font(large_dialogue_font);

var TextColor = make_color_rgb(252,255,192)
draw_set_color(TextColor);


var Minutes = time_source_get_time_remaining(Clock) div 60;
var Seconds = floor(time_source_get_time_remaining(Clock)) mod 60;
var VisualSeconds = Seconds; 

if Seconds < 10 {
	VisualSeconds = "0" + string(Seconds) 
} else {
	VisualSeconds = string(Seconds);
};

draw_text(25,150,string(Minutes) + ":" + VisualSeconds);



