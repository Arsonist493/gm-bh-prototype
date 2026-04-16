if (hp <= 0)
{
    instance_destroy();
}

if (instance_exists(obj_chr))
{
    if (state == 0)
    {
       if(image_alpha < 1){
		   image_alpha += 0.05;
	   }
	   if(portal_radius < max_portal_radius){
		   portal_radius += 1;
	   }
	   
	   
	   
	   var target_dir = point_direction(x, y, obj_chr.x, obj_chr.y);
        
        image_angle = target_dir;
		if (image_angle > 90 && image_angle < 270)
        {
            image_yscale = -1;
        }
        else
        {
            image_yscale = 1; 
        }
        
        attack_timer -= 1;
        
        if (attack_timer <= 0)
        {
            state = 1;
            direction = target_dir; 
            speed = 12;
        }
    }
    else if (state == 1)
    {
    }
}
if (x < -200 || x > room_width + 200 || y < -200 || y > room_height + 200)
{
    instance_destroy();
}