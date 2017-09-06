if(can_shoot){
	with(instance_create_depth(x, y, 300, obj_bullet)) {
		hspeed *= other.image_xscale;
	}
	can_shoot = false;
	alarm[0] = 2*room_speed;
}

if (move == 0) {
	hsp = 0;
}

if (alarm[2] == -1) {
	alarm[2] = 10;
}