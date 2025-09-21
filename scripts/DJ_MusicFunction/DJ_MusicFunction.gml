
//This sets up the function to freely add and replace songs
//Use Start Room on DJ_MusicManager to add unique songs to rooms
function CurrentSong(song, fadeOutCurrent = 0, fadeIn = 0, transition = false){
	with(DJ_MusicManager) {
		targetSongAsset = song;
		FadeOutTime = fadeOutCurrent;
		FadeInTime = fadeIn;
		songTrans = transition;
	};
};