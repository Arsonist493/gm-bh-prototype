instance_destroy(other);
var parry = instance_create_layer(x, y, "Instances", obj_blte1M);
parry.direction = other.direction + 180;
parry.image_angle = parry.direction;
parry.speed = 25;
	