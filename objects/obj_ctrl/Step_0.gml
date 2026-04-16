if (keyboard_check_pressed(ord("B"))) 
{
    shop_open = !shop_open; 

    if (shop_open == true)
    {
          
        instance_deactivate_all(true);                
        instance_activate_object(obj_ctrl);              
        instance_activate_object(obj_chr); 
		
		paused = true;
    }
    else
    {
        instance_activate_all(); 
		 paused = false;
    }
}


if(shop_open == true){
	if(keyboard_check_pressed(ord("1"))){
		if(global.gold >= cost_shield && instance_exists(obj_chr)){
			if(obj_chr.has_shield_ability == false){
				global.gold -= cost_shield;
				obj_chr.has_shield_ability = true;
			}
		}
	}
	if(keyboard_check_pressed(ord("2"))){
		if(global.gold >= cost_parry && instance_exists(obj_chr)){
			if(obj_chr.has_parry_ability == false){
				global.gold -= cost_parry;
				obj_chr.has_parry_ability = true;
			}
		}
	}
}	
if(keyboard_check_pressed(vk_escape)||keyboard_check_pressed(ord("P"))){
	paused = !paused;
	if(paused == true){
instance_deactivate_all(true);
	}
	else{
		instance_activate_all();
	}
}
if (level_up_menu == true)
{
    if (keyboard_check_pressed(ord("1")))
    {
        if (instance_exists(obj_chr)) obj_chr.weapon_type = 1; 
        level_up_menu = false;
        paused = false; 
        instance_activate_all(); 
    }
    else if (keyboard_check_pressed(ord("2")))
    {
        if (instance_exists(obj_chr)){
		obj_chr.weapon_type = 2;
        level_up_menu = false;
        paused = false; 
		instance_activate_all(); 
		}
	}	
	else if (keyboard_check_pressed(ord("3")))
    {
        if (instance_exists(obj_chr)) obj_chr.weapon_type = 3;
        level_up_menu = false;
        paused = false;
        instance_activate_all(); 
    }	
}
if (paused == true) exit;
if(enemies_to_spawn == 0 && instance_number(obj_enemy1) == 0 && instance_number(obj_enemy2) == 0)
{
	stage += 1;
	if(stage == 4){
		var mid_x = room_width / 2;
		instance_create_layer(mid_x, -150, "Instances",obj_boss);
			
		enemies_to_spawn = -1;
		alarm[0] = -1;
		if(instance_exists(obj_chr)){
			obj_chr.move_speed += 7;
		}
		show_potential = true;
		potential_timer = 300;
	}
	else if(stage < 4){
		enemies_to_spawn = 5;
		alarm[0] = 120;
	}
	
	show_stage_clear = true;
	alarm[1] = 180;
	if(stage >= 2){
		alarm[2] = 200;
	}
	
	show_debug_message("Stage Cleared! New Stage:" + string(stage));
}
if(show_potential == true){
	potential_timer -= 1;
	if(potential_timer <= 0){
		show_potential = false;
	}
}
if (stage <= 3)
{
    enemy_3_timer -= 1;
    
    if (enemy_3_timer <= 0)
    {
        var side_x = choose(40, room_width - 40);
        var side_y = irandom_range(80, room_height - 150);
        
        instance_create_layer(side_x, side_y, "Instances", obj_enemy3);
        
        enemy_3_timer = 120; 
    }
}
if (global.xp >= global.max_xp)
{
    global.level += 1;
    global.xp -= global.max_xp;
    global.max_xp *= 1.5; 

    level_up_menu = true;
    paused = true; 
    
    instance_deactivate_all(true);
    instance_activate_object(obj_ctrl); 
    instance_activate_object(obj_chr);  
	
	exit;
}
if(keyboard_check_pressed(vk_f2))
{
	with (obj_enemy_parent)
	{
		instance_destroy();
	}
	stage = 4;
	enemies_to_spawn = - 1;
	alarm[0] = -1;
	if(!instance_exists(obj_boss))
	{
		var mid_x = room_width / 2;
        instance_create_layer(mid_x, -150, "Instances", obj_boss);
    }
	global.gold += 5000;
	if(instance_exists(obj_chr))
	{
		obj_chr.move_speed += 7;
	}
}
	


