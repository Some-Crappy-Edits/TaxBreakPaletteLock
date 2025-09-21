/// @description Insert description here
// You can write your code in this editor







// Inherit the parent event
event_inherited();

if mouseClick && position_meeting (mousePosX,mousePosY,self) {
	AnimActive = 1;
	image_index = 0;
	sprite_index = AllyClick;
	global.W_HTMLCheck += 1;
} else if AnimActive = 0 {
	Clicked = 0;
};