if(can_shoot){
	if(key_down and place_meeting(x, y+1, obj_wall)){
		with(instance_create_depth(x, y+15, 0, obj_bullet)) {
			hspeed *= other.image_xscale;
		}
	}else{
		with(instance_create_depth(x, y, 0, obj_bullet)) {
			hspeed *= other.image_xscale;
		}
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