image_index = 6;

hsp = 0;

if (vsp < 0) {
	vsp = 0;
}

if(reset){
	alarm[1] = 3*room_speed;
	reset = false;
}