depth = -90;

if global.GreenDemonMode = 0 {
	instance_destroy();
};

//Speed[0] = 2;
//Speed[1] = 2.5;
//Speed[2] = 3;
//Speed[3] = 3.5;
//Speed[4] = 4

Speed = 0

MoveDir = 0;
face = 0;

global.GreenDemonX = 0;
global.GreenDemonY = 0;

howfast = 0;

//SpeedLength = array_length(Speed);

voice = 0;

PlayedSound = false;

VoiceTimer = 0;
VoiceResult = 100;

Voicelines[0] = SinistarCoward;
Voicelines[1] = SinistarILive;
Voicelines[2] = SinistarRun;

VoiceLength = array_length(Voicelines);


