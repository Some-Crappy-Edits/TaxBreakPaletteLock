
if keyboard_check_pressed(ord("9")) {
	global.masterVolume -= .1;
} else if  keyboard_check_pressed(ord("0")) {
	global.masterVolume += .1;
};

if global.masterVolume >= 1 {
	global.masterVolume = 1;
};

if global.masterVolume <= 0 {
	global.masterVolume = 0;
};


//if PauseStop.pause = true {
//	global.musicVolume = 0;
//} else if room != SettingsRoom {
//	global.musicVolume = 1;
//};

var finalAudio = global.musicVolume*global.masterVolume

	//Plays Target Song
	if songAsset != targetSongAsset {
		//Kill Old Song
		if audio_is_playing(songInstance) {
			//Add songInstance to array
			array_push(fadeOutInstances,songInstance);
			//add Song's current volume (so no sudden shift)
			array_push(fadeoutVol, songVolume);
			//Fadeout frames
			array_push(fadeoutInstTime,FadeOutTime);
		
			//Kills Current Song
			songInstance = noone;
			songAsset = noone;
		};
	
		//Add New Song
		if array_length(fadeOutInstances) == 0 || songTrans = true
		{
			if audio_exists(targetSongAsset)
			{
				songInstance = audio_play_sound(targetSongAsset,4,true)
				//Audio Muted
				audio_sound_gain(songInstance, 0, 0);
				songVolume = 0;
			};
			//Set songAsset to match targetSongAsset
			songAsset = targetSongAsset;
			songTrans = false;
		};
	};

	//Volume Control
	//Main Song Volume

	//Fade In Logic
	if audio_is_playing(songInstance) {
	
		//Fade In
		if FadeInTime > 0 {
			if songVolume < 1 { songVolume += 1/FadeInTime } else { songVolume = 1 };
		}
		//Ends Fade In, when duration is closest to 0 frames
		else 
		{
			songVolume = 1;
		}
		//Actual Volume
		
		audio_sound_gain(songInstance,songVolume*finalAudio,0);
		
	
	};

	//Fade Out Logic
	for (var i = 0; i < array_length(fadeOutInstances); i++) 
	{
		//Fade Out
		if fadeoutInstTime[i] > 0 {
			if fadeoutVol[i] > 0 { fadeoutVol[i] -= 1/FadeOutTime;};
		} 
		//Mute Old Song
		else {
			fadeoutVol[i] = 0;
		};
	
		//Actual Volume
		audio_sound_gain(fadeOutInstances[i],fadeoutVol[i]*finalAudio,0);
	
		//Stop Song if it's muted, removing it from arrays
		if fadeoutVol[i] <= 0 {
			//Stop Song
			if audio_is_playing(fadeOutInstances[i]){audio_stop_sound(fadeOutInstances[i])};
			//Remove from Arrays
			array_delete(fadeOutInstances, i, 1);
			array_delete(fadeoutVol, i, 1);
			array_delete(fadeoutInstTime, i, 1);
		
			//Set loop back to 1 to maintain array positions
			i--;
		};
	};



//no i didnt use a tutorial nuh uh you must be CRAZY anyway hi teehee >w<