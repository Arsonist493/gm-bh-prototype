if (hp <= 0) {
    instance_destroy();
}
wing_frame +=0.1;
squish_timer += 0.1;
if (!instance_exists(obj_chr)) exit;

switch(state)
{
    case "inme":
        if (y >= 100) {
            vspeed = 0;
            state = "indicator";
            timer = 0;
        }
        break;

    case "indicator":
       if (timer == 0) {
            target_angle = point_direction(x, y, obj_chr.x, obj_chr.y);
        }
		timer++;
        lx = x + lengthdir_x(3000, target_angle);
        ly = y + lengthdir_y(3000, target_angle);
        
        if (timer >= indicator_time) {
            state = "fire"; 
            timer = 0;
			
        }
        break;
        
    case "fire":
        timer++;
     
        if (can_damage == true) {
            if (collision_line(x, y, lx, ly, obj_chr, false, true)) 
            {
              if (instance_exists(obj_chr)){
					 if (obj_chr.shield_active == true) 
							exit
					}
			   obj_chr.hp -= 20;
                can_damage = false;
                alarm[0] = 30;
            }
        }

        if (timer >= fire_timer) {
            state = "indicator";
            timer = 0;
        }
        break;
}