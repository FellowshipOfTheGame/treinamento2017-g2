sprite_index = spr_dead_player;

hsp = 0;

if (vsp < 0) {
	vsp = 0;
}

if(reset){
	alarm[1] = 3*room_speed;
	reset = false;
}