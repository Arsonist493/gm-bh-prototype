if(other.is_homing == true){
	hp -= 5;}
else{
	hp -= 10;
}
instance_destroy(other)
if (hp <= 0)
{
	global.gold += 30;
	global.xp += 10
	
	instance_destroy();
}