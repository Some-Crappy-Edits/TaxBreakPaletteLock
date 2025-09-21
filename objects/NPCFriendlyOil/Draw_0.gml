draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);

if place_meeting (x,y,playGoop) && !instance_exists(Blabber) && playGoop.OnGround {
	draw_sprite(pointersUI,1,x-10,y-80);
}



