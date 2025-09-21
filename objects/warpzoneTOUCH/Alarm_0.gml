////Get Camera Width
//var CamX = camera_get_view_x(view_camera[0]);
//var CamY = camera_get_view_y(view_camera[0]);
//var CamW = camera_get_view_width(view_camera[0]);
//var CamH = camera_get_view_height(view_camera[0]);


//var LagX = LagXOg;
//var LagY = LagYOg;

//if instance_exists(lagytu) {
//	LagXOg = lagytu.finalCamX
//	LagYOg = lagytu.finalCamY
//} else {
//	LagXOg = LagX; 
//	LagYOg = LagY;
//};
	

//if rectangle_in_rectangle(bbox_left,bbox_top,bbox_right,bbox_bottom,CamX,CamY,CamX+CamW,CamY+CamH) {
//	instance_destroy(lagytu);
//	camera_set_view_pos(view_camera[0], LagX+50, LagY);
//} else {
//	if !instance_exists(lagytu) {
//		instance_create_depth(x,y,-99,lagytu)
//	};
//	camera_set_view_pos(view_camera[0],LagX,LagY);
//};