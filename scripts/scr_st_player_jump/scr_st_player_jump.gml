image_index = 1;

if(place_meeting(x, y+1, obj_wall)) {
	vsp = jumpheight;
	
	if (current == game.play)
		audio_play_sound(jump, 1, false);
		
	if (move == 0) {
		state = player.idle;
	} else {
		state = player.walk;
	}
}