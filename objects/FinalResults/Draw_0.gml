draw_set_font(dialogue_font);


var TextColor = make_color_rgb(252,255,192)
draw_set_color(TextColor);
var EndingTitles = ""
var TextX = 102;
var TextY = 163;
var ScoreX = 75;
var ScoreY = 179;

if global.Score < 10 && global.Score > -1 {
	ScoreX = 130;
} else if global.Score >= 10 && global.Score < 100 {
	ScoreX = 125;
} else if global.Score >= 100 && global.Score < 1000 {
	ScoreX = 115;
} else if global.Score >= 1000 && global.Score < 10000 {
	ScoreX = 105;
} else if global.Score >= 10000 && global.Score < 100000 {
	ScoreX = 94;
} else if global.Score >= 100000 && global.Score < 1000000 {
	ScoreX = 85;
} else {
	ScoreX = 75;
};

if global.Score > -10 && global.Score < 0 {
	ScoreX = 130;
} else if global.Score <= -10 && global.Score > -100 {
	ScoreX = 125;
} else if global.Score <= -100 && global.Score > -1000 {
	ScoreX = 115;
} else if global.Score <= -1000 && global.Score > -10000{
	ScoreX = 105;
} else if global.Score <= -10000 && global.Score > -100000 {
	ScoreX = 94;
} else if global.Score <= 1-00000 && global.Score > -1000000 {
	ScoreX = 85;
} else {
	ScoreX = 75;
};


if room = GameOver {
	EndingTitles = "Game Over"
} else if room = EndingWin {
	EndingTitles = "Congratulations!"
} else if room = EndingZero {
	EndingTitles = "A Real Nerd, Aren't You?"
} else if room = EndingTaxFraud {
	EndingTitles = "Cheaters Never Win"
};


draw_text(TextX,TextY,EndingTitles)

if !os_browser {
	draw_set_font(large_dialogue_font);
} else {
	draw_set_font(html_dialogue_font);
};
draw_text_ext_transformed(ScoreX,ScoreY,"$" + string(global.Score),1,100,1.2,1.2,1);








