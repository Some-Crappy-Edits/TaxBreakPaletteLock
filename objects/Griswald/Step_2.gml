

var DefaultRandomNumber = irandom_range(0,DefaultLength-1);
var WinRandomNumber = irandom_range(0,WinLength-1);
var LoseRandomNumber = irandom_range(0,LoseLength-1);

if DefaultTimer < DefaultResult {
		DefaultTimer++;
};

if DefaultTimer >= DefaultResult && global.WinCheck = false && AudioCheckSequence(DefaultVoice) + AudioCheckSequence(WinVoice) + AudioCheckSequence(LoseVoice) = 0 {
	
			//var RandomSpot = irandom_range(0,DurationLength-1);
				var Sound = audio_play_sound(DefaultVoice[DefaultRandomNumber],8,false);
				audio_sound_gain(Sound,SFXVolume,0);
		
				DefaultTimer = 0;
}


if global.WinCheck = 1 && AudioCheckSequence(DefaultVoice) + AudioCheckSequence(WinVoice) + AudioCheckSequence(LoseVoice) = 0 {
			var Sound = audio_play_sound(WinVoice[WinRandomNumber],8,false);
			audio_sound_gain(Sound,SFXVolume,0);
			global.WinCheck = false;
		
};