draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);

if place_meeting(x,y,playGoop) && playGoop.xspd = 0 && playGoop.OnGround = true && !instance_exists(Blabber) {
	draw_sprite(pointersUI,1,x+15,y-20)
};
