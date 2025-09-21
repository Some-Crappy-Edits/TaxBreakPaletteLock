global.sfxVolume = 3;

DefaultVoice[0] = GGrunt1;
DefaultVoice[1] = GGrunt2;


IdleSpr = grwidle;
ClickSpr = grwclick;
WinSpr = grwhit_strip9;

WinHit = 0;




DefaultLength = array_length(DefaultVoice);

WinVoice[0] = GLaugh1;
WinVoice[1] = GLaugh2;
WinVoice[2] = GLaugh3;
WinVoice[3] = GIDK1;
WinVoice[4] = GIDK2;
WinVoice[5] = GContemplate1;
WinVoice[6] = GDeduct1;
WinVoice[7] = GFood1;

WinLength = array_length(WinVoice);


LoseVoice[0] = GGoddamn1;
LoseVoice[1] = GGoddamn2;
LoseVoice[2] = GGrunt1;
LoseVoice[3] = GGrunt2;

LoseLength = array_length(LoseVoice);

LoserTimer = 0;
LoserResult = 9000;

DefaultTimer = 0;
DefaultResult = 3000;

SFXVolume =  global.sfxVolume;

WinCheck = 0;