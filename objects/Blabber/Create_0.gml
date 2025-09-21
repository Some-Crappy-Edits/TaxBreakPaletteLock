depth = -9999999999

SFXVolume = 0;

//Sprites
blabber_spr[0] = blabber_main;
blabber_img = 0;
blabber_img_spd = 1/60;

//nametag_spr[0] = blabber_nametag;
//nt_width = 20;
//nt_height = 40;

//Textbox
Bwidth = 193;
Bheight = 56;
border = 10;
//nt_border = 17;
line_sep = 16;
line_width = Bwidth - border*2

setup = false

//Text
page = 0;
page_number = 0;
text[0] = "";
name[0] = "";
text_length[0] = string_length(text[0])
char[0, 0] = ""
charX[0, 0] = 0
charY[0, 0] = 0
draw_char = 0;
text_spd = .5;

//Sound/Voices
snd_delay = 4;
snd_count = snd_delay;

//Typewriter Fix
text_default_align();
last_free_space = 0;
txt_pause_timer = 0;
txt_pause = 10;