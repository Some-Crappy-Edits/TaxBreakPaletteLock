var CamX = camera_get_view_x( view_camera[0] );
var CamY = camera_get_view_y( view_camera[0] );
var CamW = camera_get_view_width( view_camera[0] );
var CamH = camera_get_view_height( view_camera[0] );


draw_sprite_stretched_ext(queenblackbg, 0, CamX, CamY,CamW,CamH,image_blend,.4);

draw_sprite_stretched_ext(greendemonbg, 0, CamX, CamY,CamW,CamH,image_blend,.5);

draw_sprite_stretched_ext(sprite_index, image_index, CamX, CamY,CamW,CamH,image_blend,.1);



