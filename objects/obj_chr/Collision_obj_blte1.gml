if(shield_active == true){
	instance_destroy(other);
}
else
{
    hp -= 20;
    instance_destroy(other);
    image_blend = c_red;
    alarm[1] = 5;
    if (hp <= 0)
    {
        room_restart();
    }
}