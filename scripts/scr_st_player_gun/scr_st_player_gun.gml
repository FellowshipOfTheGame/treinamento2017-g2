if(cantshoot == 0){
	var bala = instance_create_depth(x,y, 0, obj_bullet);
	bala.hspeed *= image_xscale;
	cantshoot = 1;
	alarm[0] = 3*room_speed;
}

if (move == 0) {
	hsp = 0;
}

if (alarm[2] == -1) {
	alarm[2] = 10;
}