if (instance_exists(obj_ctrl))
{
    if (obj_ctrl.shop_open == true || obj_ctrl.level_up_menu == true )
    {
		speed = 0;
        exit; 
    }
}
wing_angle = sin(current_time * 0.02) * 20;
if (keyboard_check(ord("D"))) { x += move_speed; }
if (keyboard_check(ord("A")))  { x -= move_speed; }
if (keyboard_check(ord("W")))    { y -= move_speed; }
if (keyboard_check(ord("S")))  { y += move_speed; }

x = clamp(x, sprite_width / 2, room_width - (sprite_width / 2));
y = clamp(y, sprite_height / 2, room_height - (sprite_height / 2));
if (sprite_index != spr_chr_blt)
{
	sprite_index = spr_chr;
}
if(hp <= 0)
{
	instance_destroy();
	room_restart();
}
if(keyboard_check_pressed(vk_space) && can_melee == true && has_parry_ability == true)
{
	instance_create_layer(x, y, "Instances", obj_melee);
	can_melee = false;
	alarm[2] = max_cd;
}
if(keyboard_check_pressed(ord("E"))){
	if(has_shield_ability == true && shield_cooldown <= 0){
		shield_active = true;
		shield_timer = 180;
		shield_cooldown = max_shield_cooldown;
	}
}
if(shield_active == true){
	shield_timer -= 1;
	if(shield_timer <= 0){
		shield_active = false;
	}
}
else{
	if(shield_cooldown > 0){
		shield_cooldown -= 1;
	}
}

