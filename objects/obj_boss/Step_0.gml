if (instance_exists(obj_ctrl))
{
    if (obj_ctrl.paused == true || obj_ctrl.shop_open == true) exit;
}

if (state == 0)
{
    sprite_index = spr_boss;
	if (y < 200)
    {
        y += 3; 
    }
	else
    {
        state = 1; 
    }
}

else if (state == 1)
{
   sprite_index = spr_boss;
   attack_timer -= 1;

    if (attack_timer <= 0)
    {
        var spawn_point = zealot_count; 
        var zealot_x = 0;
        var zealot_y = 0;
        
        switch(spawn_point)
        {
            case 0: zealot_x = 60; zealot_y = 60; break;
            case 1: zealot_x = 60; zealot_y = room_height - 60; break;
            case 2: zealot_x = room_width - 60; zealot_y = 60; break;
            case 3: zealot_x = room_width - 60; zealot_y = room_height - 60; break;
        }

        if (instance_exists(obj_chr))
        {
            var new_zealot = instance_create_layer(zealot_x, zealot_y, "Instances", obj_enemy3);
            new_zealot.image_alpha = 1;
            new_zealot.state = 1; 
            
            var dir_to_player = point_direction(zealot_x, zealot_y, obj_chr.x, obj_chr.y);
            new_zealot.direction = dir_to_player;
            new_zealot.image_angle = dir_to_player;
            
            if (dir_to_player > 90 && dir_to_player < 270) {
                new_zealot.image_yscale = -1; 
            } else {
                new_zealot.image_yscale = 1;
            }
            
            new_zealot.speed = 25; 
        }

        zealot_count += 1;

        if (zealot_count < 4)
        {
            attack_timer = 10; 
        }
        else
        {
			zealot_count = 0;
            if(random_mode = true){
				state = choose(1,2,3,4,5,6);
			}
			else{			
				state = 2;  
			}
            attack_step = 0;    
            attack_timer = 30;  
        }	
    }
}


if (state == 2)
{
    attack_timer -= 1;
    var w = room_width;
    var h = room_height;

    if (attack_step == 0) 
    {
       sprite_index = spr_boss;
	   if (attack_timer <= 0) { attack_step = 1; attack_timer = 25; }
    }
    else if (attack_step == 1) 
    {
       if (cleave_count == 0)
	   {
		   sprite_index = spr_boss_lattack;
	   }
	   else {
		   sprite_index = spr_boss_rattack;
	   }
	   if (attack_timer <= 0)
        {
            attack_step = 2;   
            attack_timer = 8;
            
            if (instance_exists(obj_chr))
            {
                var hit = false;
                
                if (cleave_count == 0) 
                {
                    var in_tri_1 = point_in_triangle(obj_chr.x, obj_chr.y, 0, 0, w, 0, 0, h);
                    var in_tri_2 = point_in_triangle(obj_chr.x, obj_chr.y, w, 0, w * 0.35, h, 0, h);                   
				    if (in_tri_1 || in_tri_2) hit = true;
			
                }
                else if (cleave_count == 1) 
                {
                    var in_tri_1 = point_in_triangle(obj_chr.x, obj_chr.y, w, 0, 0, 0, w, h);
                    var in_tri_2 = point_in_triangle(obj_chr.x, obj_chr.y, 0, 0, w * 0.65, h, w, h);
                    if (in_tri_1 || in_tri_2) hit = true;
                }

               
                if (hit == true)
                {
                    if (obj_chr.shield_active == true) {
                        obj_chr.shield_active = false; 
                    } else {
                        obj_chr.hp -= 20;
                    }
                }
            }
        }
    }
    else if (attack_step == 2) 
    {
        sprite_index = spr_boss;
		if (attack_timer <= 0)
        {
            cleave_count += 1; 
            if (cleave_count < 2) 
            {
                attack_step = 0; 
                attack_timer = 10;
            }
            else 
            {             
                cleave_count = 0; 
                if(random_mode = true){
				state = choose(1,2,3,4,5,6);
			}
			else{			
				state = 3;  
			}      
                attack_step = 0;
                attack_timer = 40; 
            }
        }
    }
}


if (state == 3)
{
    attack_timer -= 1;
    var w = room_width;
    var h = room_height;

   
    if (attack_step == 0) 
    {
	  sprite_index = spr_boss;
	  if (attack_timer <= 0)
        {
            attack_step = 1;   
            attack_timer = 30; 
        }
    }
       else if (attack_step == 1) 
    {
      sprite_index = spr_boss_dattack;
	   if (attack_timer <= 0)
        {
            attack_step = 2;   
            attack_timer = 10; 
            
            if (instance_exists(obj_chr))
            {
                var hit = false;
                
                var in_rect1 = point_in_rectangle(obj_chr.x, obj_chr.y, w * 0.25, 0, w * 0.42, h);
                var in_rect2 = point_in_rectangle(obj_chr.x, obj_chr.y, w * 0.58, 0, w * 0.75, h);
                
                if (in_rect1 || in_rect2) hit = true;

                if (hit == true)
                {
                    if (obj_chr.shield_active == true) {
                        obj_chr.shield_active = false; 
                    } else {
                        obj_chr.hp -= 20;
                    }
                }
            }
        }
    }
    else if (attack_step == 2) 
    {
        sprite_index = spr_boss_battack;
		if (attack_timer <= 0)
        {
            attack_step = 0; 
             if(random_mode = true){
				state = choose(1,2,3,4,5,6);
			}
			else{			
				state = 4;  
			}        
            attack_timer = 20; 
        }
    }
}
if (state == 4)
{
    attack_timer -= 1;
    var w = room_width;
    var h = room_height;
    

    if (attack_step == 0) 
    {
       sprite_index = spr_boss;
	   if (attack_timer <= 0) 
        {
            attack_step = 1;
            attack_timer = 40;
        } 
    }
    else if (attack_step == 1) 
    {
        sprite_index = spr_boss_dattack;
	    if (attack_timer <= 0)
        {
            attack_step = 2;   
            attack_timer = 15; 
            
            if (instance_exists(obj_chr))
            {
                var hit = false;
                var px = obj_chr.x;
                var py = obj_chr.y;
                
              
                var beam_radius = 150; 
				var offset = w * 0.35;
				var bw = w - offset;
                var diag_len = point_distance(0, 0, bw, h); 
                
                var dist1 = abs(h * px - bw * py) / diag_len;
                var dist2 = abs(h * px + bw * py - h * w) / diag_len;
                              
                if (dist1 < beam_radius || dist2 < beam_radius) { hit = true; }

                if (hit == true)
                {
                    if (obj_chr.shield_active == true) {
                        obj_chr.shield_active = false; 
                    } else {
                        obj_chr.hp -= 20;
                    }
                }
            }
        }
    }
    

     else if (attack_step == 2) 
    {
        sprite_index = spr_boss_battack;
		if (attack_timer <= 0)
        {
            attack_step = 0; 
             if(random_mode = true){
				state = choose(1,2,3,4,5,6);
			}
			else{			
				state = 5;  
			}        
            attack_timer = 50; 
        }
    }
}

if (state == 5)
{
    attack_timer -= 1;
	var w = room_width;
    var h = room_height;
  
    if (attack_step == 0) 
    {
        sprite_index = spr_boss;
		if (attack_timer <= 0)
        {
            attack_step = 1;   
            attack_timer = 30; 
        }
    }
       else if (attack_step == 1) 
    {
        sprite_index = spr_boss_dattack;
		if (attack_timer <= 0)
        {
			attack_step = 2;   
            attack_timer = 10; 
            
            if (instance_exists(obj_chr))
            {
                var hit = false;
                
                var in_rect1 = point_in_rectangle(obj_chr.x, obj_chr.y, w * 0.25, 0, w * 0.42, h);
                var in_rect2 = point_in_rectangle(obj_chr.x, obj_chr.y, w * 0.58, 0, w * 0.75, h);
                
                if (in_rect1 || in_rect2) hit = true;

                if (hit == true)
                {
                    if (obj_chr.shield_active == true) {
                        obj_chr.shield_active = false; 
                    } else {
                        obj_chr.hp -= 20;
                    }
                }
            }
        }
    }
    else if (attack_step == 2) 
    {
        sprite_index = spr_boss_battack;
		if (attack_timer <= 0)
        {
            attack_step = 0; 
             if(random_mode = true){
				state = choose(1,2,3,4,5,6);
			}
			else{			
				state = 6;  
			}      
            attack_timer = 50; 
        }
    }
}

if (state == 6)
{
    attack_timer -= 1;
    var w = room_width;
    var h = room_height;

    if (attack_step == 0) 
    {
        sprite_index = spr_boss;
		if (attack_timer <= 0) 
        {
            attack_step = 1;
            attack_timer = 30;
        } 
    }
    else if (attack_step == 1) 
    {
        sprite_index = spr_boss_dattack;
		if (attack_timer <= 0)
        {
            attack_step = 2;   
            attack_timer = 15; 
            
            if (instance_exists(obj_chr))
            {
                var hit = false;
                var px = obj_chr.x;
                
                var beam_radius = 150; 
                var center_x = w / 2; 
                
                if (abs(px - center_x) < beam_radius) 
                { 
                    hit = true; 
                }

                if (hit == true)
                {
                    if (obj_chr.shield_active == true) {
                        obj_chr.shield_active = false; 
                    } else {
                        obj_chr.hp -= 20;
                    }
                }
            }
        }
    }
    else if (attack_step == 2) 
    {
        sprite_index = spr_boss_battack;
		if (attack_timer <= 0)
        {
            attack_step = 0; 	         
            attack_timer = 60;
			
			random_mode = true;
			state = choose(1,2,3,4,5,6);
        }
    }
}



