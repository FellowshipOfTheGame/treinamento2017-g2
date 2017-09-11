image_index = 1;
audio_play_sound(jump, 1, false);

if(place_meeting(x, y+1, obj_wall)) {
	vsp = jumpheight;
	if (move == 0) {
		state = player.idle;
	} else {
		state = player.walk;
	}
}