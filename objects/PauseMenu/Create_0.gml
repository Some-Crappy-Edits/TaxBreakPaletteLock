if room = Menu {
	instance_destroy();
};

PreviousSong = DJ_MusicManager.targetSongAsset;
PreviousFadeOut = DJ_MusicManager.FadeOutTime;
PreviousFadeIn = DJ_MusicManager.FadeInTime;
PreviousSongTrans = DJ_MusicManager.songTrans;



pos = 0;
if room = Menu {
	instance_destroy();
}

posH = 0;
page = 0;

InputDelayTimer = 0;
InputDelayResult = 30;

StopCheck = 0;

//Main Pause Menu

sprite[0, 0] = "Return to Menu";
sprite[0, 1] = "Restart";

Xposition[0, 0] = 96;
Xposition[0, 1] = 96;

Yposition[0, 0] = 191;
Yposition[0, 1] = 201;

//Close Game "Are You Sure?"

///sprite[1, 0] = SaveBtn;
//sprite[1, 1] = RtrnMenuBtn;

//Xposition[1, 0] = 350;
//Xposition[1, 1] = 300;


//Yposition[1, 0] = 100;
//Yposition[1, 1] = 200;


sprite_length = array_length(sprite);