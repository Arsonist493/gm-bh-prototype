if(other.is_homing == true){
	hp -= 10;}
else{
	hp -= 20;
}
instance_destroy(other);