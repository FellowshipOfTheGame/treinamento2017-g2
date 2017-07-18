vsp = jumpheight;

if(place_meeting(x, y+1, obj_wall)) {
	if (move == 0) {
		state = player.idle;
	} else {
		state = player.walk;
	}
}
