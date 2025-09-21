SFXVolume = global.sfxVolume * global.masterVolume;


var CurScore = global.Score;


if sprite_index = IdleSpr && image_index = 1 && irandom(1) = 1 {
	
	sprite_index = ClickSpr
	
};

if sprite_index = IdleSpr && WinHit = 1 {
	sprite_index = WinSpr;
};