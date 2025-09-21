SFXVolume = global.sfxVolume * global.masterVolume;


if click == true {
	var Sound = audio_play_sound(TypeClick,8,false);
	audio_sound_gain(Sound,SFXVolume,0);
	click = false;
};

if GriswaldLaugh == true {
	var Sound = audio_play_sound(GLaugh3,8,false);
	audio_sound_gain(Sound,SFXVolume,0);
	GriswaldLaugh = false;
};

if GriswaldGiggle == true {
	var Sound = audio_play_sound(GGiggle1,8,false);
	audio_sound_gain(Sound,SFXVolume,0);
	GriswaldGiggle = false;
};

if GriswaldGoddamn == true {
	var Sound = audio_play_sound(GGoddamn2,8,false);
	audio_sound_gain(Sound,SFXVolume,0);
	GriswaldGoddamn = false;
};


if GriswaldWTF == true {
	var Sound = audio_play_sound(GAngry1,8,false);
	audio_sound_gain(Sound,SFXVolume,0);
	GriswaldWTF = false;
};


//if flutters = true && !audio_is_playing( fluttersPlay ) {
	//fluttersPlay = audio_play_sound(TypeClick,8,false);
//};

//if flutters = false && audio_is_playing( fluttersPlay ) {
	//audio_stop_sound(fluttersPlay);
//};

//flutters = false;