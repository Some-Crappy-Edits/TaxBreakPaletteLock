function Mousey() {
	
	mouseCheck = mouse_check_button(mb_left);
		mouseCheck = clamp(mouseCheck,0,1);
	mouseClick = mouse_check_button_pressed(mb_left);
	mousePosX =  device_mouse_x(0);
	mousePosY = device_mouse_y(0);
	
	clicked = noone;
	
};

function AudioCheckSequence(ArrayCheck) {
  return array_reduce(ArrayCheck, function(PrevResult, CurAudio) { 
    return PrevResult + audio_is_playing(CurAudio) 
  }, 0) > 0;
}

function UIControls() {
	
	__input_config_verbs();
	
	if global.Controller != undefined {
	interactKey = input_check_pressed("action");
		interactKey = clamp(interactKey,0,1);
	interactKeyT = input_check("action");
	MinteractKey = input_check_pressed("menuaction");
	txtskipKey = input_check("fasttext");
	esctxtKey = input_check_pressed("skiptext");
	escKey = input_check_pressed("pause");
	saveKey = keyboard_check_pressed(ord("1"));
	loadKey = keyboard_check_pressed(ord("2"));
	downKey = input_check_pressed ("down");
	upKey = input_check_pressed ("up");
	rightKey = input_check_pressed("right");
	leftKey = input_check_pressed("left");
	};
};

function Dedelay(){
	bufferTime = 3;
	jumpKeyBuffered = 0;
	jumpKeyBufferTimer = 0;
	
};

//Array for Controllers

function Controllers(){
	
	__input_config_verbs();
	
	rightKeyPressed = input_check_pressed("right");
	rightKey = input_check("right") 
		rightKey = clamp(rightKey, 0, 1);
	leftKeyPressed = input_check_pressed("left");
	leftKey = input_check("left");
		leftKey = clamp(leftKey, 0, 1);
	downKey = input_check("down");
		downKey = clamp(downKey, 0, 1);
	
	//Action Controls\
	shootKey = input_check_pressed("action")
		shootKey = clamp(shootKey,0,1);
	jumpKeyPressed = input_check_pressed("jump");
	jumpKey = input_check("jump")
		jumpKey = clamp(jumpKey, 0, 1);
	runKey = input_check("run");
		runKey = clamp(runKey, 0, 1);

}

function JumpBuffering() {
	
	Controllers();
		//Jump Buffer
	if jumpKeyPressed {
		jumpKeyBufferTimer = bufferTime;
	}
	if jumpKeyBufferTimer > 0 {
		jumpKeyBuffered = 1;
		jumpKeyBufferTimer--;
	} else {
		jumpKeyBuffered = false;
	}
	
}