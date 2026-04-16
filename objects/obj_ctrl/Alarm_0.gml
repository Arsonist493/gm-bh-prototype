if (shop_open == true || paused == true)
{
    alarm[0] = 10; 
    exit;         
}
if (enemies_to_spawn > 0)
{
    var random_x = random_range(50, room_width - 50);
    
    if (stage == 1)
    {
    
        instance_create_layer(random_x, -100, "Instances", obj_enemy1);
		enemies_to_spawn -=1;
		alarm[0] = 60;
   }
    else if (stage == 2)
    {
    
        instance_create_layer(random_x, -100, "Instances", obj_enemy2);
		enemies_to_spawn -=1;
		alarm[0] = 90;
   }
	else if (stage >=3)
	{
		if (enemies_to_spawn >= 5) 
        {
		instance_create_layer(300, - 100, "Instances", obj_enemy2);
		instance_create_layer(room_width - 300, -100, "Instances", obj_enemy2);
		var mid = room_width / 2;
        
        instance_create_layer(mid, -150, "Instances", obj_enemy1);      
        instance_create_layer(mid - 120, -150, "Instances", obj_enemy1); 
        instance_create_layer(mid + 120, -150, "Instances", obj_enemy1);
    enemies_to_spawn -= 5;
	alarm[0] = 200;
	}
		 else{
			 var random_x = random_range(50, room_width - 50);
            instance_create_layer(random_x, -100, "Instances", obj_enemy1);
            enemies_to_spawn -= 1;
            alarm[0] = 60
		 }
	}
		
}