//Mouse Controls
Mousey();

if mouseCheck {
	if position_meeting (device_mouse_x_to_gui(0),device_mouse_y_to_gui(0),self) {
		mouseClick = true;
	} else {
		mouseClick = false;
		};
};