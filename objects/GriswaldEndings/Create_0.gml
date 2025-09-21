image_speed = 0;
HitCheck = 0;

if room = EndingWin {
	DJ_SFXManager.GriswaldLaugh = true;
} else if room = GameOver {
	DJ_SFXManager.GriswaldWTF = true;
} else if room = EndingZero {
	DJ_SFXManager.GriswaldGiggle = true;
} else if room = EndingTaxFraud {
	DJ_SFXManager.GriswaldGoddamn = true;
};