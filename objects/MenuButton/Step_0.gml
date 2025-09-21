//Mouse Controls
Mousey();

if mouseClick && Clicked <= 0  {
	if position_meeting (mousePosX,mousePosY,self) {
		mouseCheck = true;
	} else {
		mouseCheck = false;
	};
} else {
	mouseClick = false;
};

if mouseCheck = true {
	Clicked = 1;
};