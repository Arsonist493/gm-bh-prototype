if(instance_exists(obj_ctrl) && obj_ctrl.paused == true){
	alarm[0] = 5;
	exit;
}

instance_create_layer(x,y,layer,obj_blte1);
alarm [0] = 30;