if (other.is_homing == true)
{
    hp -= 5; 
}
else
{
    hp -= 10;
}

instance_destroy(other);
if (hp <= 0)
{
	global.gold += 20
	global.xp += 30
	
	instance_destroy();
}