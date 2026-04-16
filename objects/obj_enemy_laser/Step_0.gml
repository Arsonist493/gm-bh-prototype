if(hp < 0){
	instance_destroy();
}
switch(state)
{
	case "inme":
	if(y >= 100){
		vspeed = 0;
		state = "indicator";
		timer = 0;
	}
	case "indicator":
	timer++;
	if(timer >= indicator_timer){
		state = "fire";
		timer = 0;
	}
	break;
	case "fire":
	timer++;
	if(can_damage = true){
		if(collision_rectangle(x - 10, y, x + 10, room_height, obj_chr, false, true)){
			obj_chr.hp -= 1;
			can_damage = false;
			alarm[0] = 30;
		}
	}
	if(timer >= fire_timer){
		state = "indicator";
		timer = 0;
	}
	break;
}
			