if(floor(image_index) < 7) {
	image_index = 7;
}

hsp = 0;

if (vsp < 0) {
	vsp = 0;
}

global.doors_passed = 0;

audio_stop_all();

if(reset){
	alarm[1] = 3*room_speed;
	reset = false;
}