if(floor(image_index) < 7) {
	image_index = 7;
}

hsp = 0;

if (vsp < 0) {
	vsp = 0;
}

alarm[2] = -1;

global.doors_passed = 0;
global.max_weapon = 1;

if(reset){
	
	if(!obj_boss_2.has_passed) {
		audio_stop_all();
		audio_play_sound(morri, 1, false);
	}
	
	alarm[1] = 3*room_speed;
	reset = false;
}