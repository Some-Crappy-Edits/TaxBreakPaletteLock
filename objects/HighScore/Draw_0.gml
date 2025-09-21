/// @description Insert description here
// You can write your code in this editor
draw_set_font(dialogue_font);
TextColor = make_color_rgb(252,255,192)
draw_set_color(TextColor);
var TaxName = ""

if global.HighScore > 0 {
	TaxName = "Tax Owed:"
} else if global.HighScore = 0 {
	exit;
} else if global.HighScore < 0 {
	TaxName = "Tax Return:"
};


draw_text(230,28,TaxName);
draw_text(230,40,"$" + string(global.HighScore))

draw_text(5,200,"Game by Some-Crappy-Edits")
draw_text(5,210,"Music provided by ProductionCrate")

