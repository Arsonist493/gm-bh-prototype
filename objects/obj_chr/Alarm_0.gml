if (instance_exists(obj_ctrl))
{
    if (obj_ctrl.shop_open == true || obj_ctrl.paused == true)
    {
        alarm[0] = 5; 
        exit; 
    }
}
sprite_index = spr_chr_blt;
image_index = 0; 
image_speed = 1;
if (weapon_type == 0)
{	
   switch(weapon_level)
{
    case 1:
        var m = instance_create_layer(x, y, "Instances", obj_pblt);
        m.direction = 90;
        m.image_angle = 90;
        break;
	case 2:
        var m1 = instance_create_layer(x - 20, y, "Instances", obj_pblt);
        m1.direction = 90;
        m1.image_angle = 90;
		var m2 = instance_create_layer(x + 20, y, "Instances", obj_pblt);
        m2.direction = 90;
        m2.image_angle = 90;
        break;
	case 3:
		var m1 = instance_create_layer(x, y, "Instances", obj_pblt);
        m1.direction = 90;
        m1.image_angle = 90;
		var m2 = instance_create_layer(x - 40, y, "Instances", obj_pblt);
        m2.direction = 90;
        m2.image_angle = 90;
		var m3 = instance_create_layer(x + 40, y, "Instances", obj_pblt);
        m3.direction = 90;
        m3.image_angle = 90;
        break;
}
}
else if (weapon_type == 1)
{
    switch(weapon_level)
    {
        case 1:
            var m = instance_create_layer(x, y, "Instances", obj_pblt);
            m.direction = 90; m.image_angle = 90; m.is_homing = true; break;
        case 2:
            var m1 = instance_create_layer(x - 15, y, "Instances", obj_pblt);
            m1.direction = 90; m1.image_angle = 90; m1.is_homing = true;
            var m2 = instance_create_layer(x + 15, y, "Instances", obj_pblt);
            m2.direction = 90; m2.image_angle = 90; m2.is_homing = true; break;
        case 3:
            var m1 = instance_create_layer(x, y, "Instances", obj_pblt);
            m1.direction = 90; m1.image_angle = 90; m1.is_homing = true;
            var m2 = instance_create_layer(x - 25, y, "Instances", obj_pblt);
            m2.direction = 90; m2.image_angle = 90; m2.is_homing = true;
            var m3 = instance_create_layer(x + 25, y, "Instances", obj_pblt);
            m3.direction = 90; m3.image_angle = 90; m3.is_homing = true; break;
    }
}
else if (weapon_type == 2)
{
    switch(weapon_level)
    {
        case 1: 
            var m1 = instance_create_layer(x, y, "Instances", obj_pblt);
            m1.direction = 90; m1.image_angle = 90;
            var m2 = instance_create_layer(x - 10, y, "Instances", obj_pblt);
            m2.direction = 135; m2.image_angle = 135;
            var m3 = instance_create_layer(x + 10, y, "Instances", obj_pblt);
            m3.direction = 45; m3.image_angle = 45; break;
        case 2: 
            var m1 = instance_create_layer(x - 10, y, "Instances", obj_pblt);
            m1.direction = 95; m1.image_angle = 95;
            var m2 = instance_create_layer(x + 10, y, "Instances", obj_pblt);
            m2.direction = 80; m2.image_angle = 80;
            var m3 = instance_create_layer(x - 20, y, "Instances", obj_pblt);
            m3.direction = 135; m3.image_angle = 135;
            var m4 = instance_create_layer(x + 20, y, "Instances", obj_pblt);
            m4.direction = 45; m4.image_angle = 45; break;
        case 3:
            var m1 = instance_create_layer(x, y, "Instances", obj_pblt);
            m1.direction = 90; m1.image_angle = 90;
            var m2 = instance_create_layer(x - 15, y, "Instances", obj_pblt);
            m2.direction = 115; m2.image_angle = 115;
            var m3 = instance_create_layer(x + 15, y, "Instances", obj_pblt);
            m3.direction = 65; m3.image_angle = 65;
            var m4 = instance_create_layer(x - 30, y, "Instances", obj_pblt);
            m4.direction = 150; m4.image_angle = 150;
            var m5 = instance_create_layer(x + 30, y, "Instances", obj_pblt);
            m5.direction = 30; m5.image_angle = 30; break;
    }
}
else if (weapon_type == 3)
{
    var m1 = instance_create_layer(x, y, "Instances", obj_pblt);
    m1.direction = 90; m1.image_angle = 90;
    var m2 = instance_create_layer(x - 30, y, "Instances", obj_pblt);
    m2.direction = 90; m2.image_angle = 90;
    var m3 = instance_create_layer(x + 30, y, "Instances", obj_pblt);
    m3.direction = 90; m3.image_angle = 90;
}
alarm[0] = my_attack_speed;
