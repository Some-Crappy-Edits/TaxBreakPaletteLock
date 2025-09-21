if room == QueenRoom {
	var _camX = camera_get_view_x(view_camera[0]);
	var _camY = camera_get_view_y(view_camera[0]);

	var _p8 = .98;
	var _p7 = 1;
	var _p6 = .95;
	var _p5 = .80;
	var _p4 = .65;
	var _p3 = .50;
	var _p2 = .35;
	var _p1 = .20;
	
	//draw_sprite(outsidepara,0,_camX*_p1+10, _camY*_p1+500);
	
	draw_sprite_ext(queenbg3_strip5,image_index,_camX*_p6,_camY*_p6,image_xscale,image_yscale,image_angle,c_white,0.5)
	
};