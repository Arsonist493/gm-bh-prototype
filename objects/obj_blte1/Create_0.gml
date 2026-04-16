
if(instance_exists(obj_chr)){
	image_angle = direction;
	direction = point_direction(x,y,obj_chr.x,obj_chr.y);
}
else{
	direction = 270;
	}
	image_angle = direction;
speed = 9;