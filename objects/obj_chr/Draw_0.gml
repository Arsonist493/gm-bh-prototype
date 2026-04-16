draw_sprite_ext(spr_brain, 0, x, y, image_xscale, image_yscale, 0, c_white, 1);
draw_sprite_ext(spr_wings, 0, x + 12, y, image_xscale, image_yscale, wing_angle, c_white, 1);
draw_sprite_ext(spr_wings, 0, x - 12, y, -image_xscale, image_yscale, -wing_angle, c_white, 1);
if(shield_active == true){
	var target_frame = 0;
	if(shield_timer > 170)
	{
		target_frame = floor ((current_time / 100) % 2);
	}
	else if(shield_timer <= 10){
		target_frame = 3;
	}
	else{
		target_frame = 2;
	}
	draw_sprite_ext(
	spr_shield_effect,
	target_frame,
	x,y,
	1,1,
	0,
	c_white,
	0.7
	);
}