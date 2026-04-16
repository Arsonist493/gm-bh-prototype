if(is_homing == true){
	if(instance_exists(obj_enemy_parent)){
		var target = instance_nearest(x, y, obj_enemy_parent);
		
		var target_dir = point_direction(x, y, target.x, target.y);
		
		direction += angle_difference(target_dir, direction) * 0.1;
		image_angle = direction;
	}
}