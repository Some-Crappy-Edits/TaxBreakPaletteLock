global.masterVolume = 0.3;
global.musicVolume = 1;


//Current Song / Song to be swapped over
songInstance = noone;
songAsset = noone;
targetSongAsset = noone;
songVolume = 1; //Volume of songInstance
songTrans = false;

FadeOutTime = 0; //Duration of fade out for current song
FadeInTime = 0; //Duration of fade in for new song

//Fade Out and Killing Old Song

fadeOutInstances = array_create(0); //The audio instances to fade out
fadeoutVol = array_create(0); //The volume of audio instances
fadeoutInstTime = array_create(0); //Duration of fade out 
