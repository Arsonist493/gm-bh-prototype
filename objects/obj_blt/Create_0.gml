direction = point_direction(x,y,obj_chr.x,obj_chr.y);
if(instance_exists(obj_chr)){
	image_angle = direction;
}
else{
	instance_destroy();
}
speed = 9;