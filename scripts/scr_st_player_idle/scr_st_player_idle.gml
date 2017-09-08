hsp = 0;

if(vulnerable) {
	switch(act_weapon) {
		case 0:
			image_index = 0;

			if(key_space) state = player.melee;
		break;
		case 1:
			image_index = 3;
	
			if(place_meeting(x, y+1, obj_wall)) jumps = jumps_max;
		
			if(key_up) state = player.steampack;
		break;
		case 2:
			image_index = 2;
		
			if(key_space) state = player.gun;
		break;
	}
}

if (key_up and place_meeting(x, y+1, obj_wall)) {
	state = player.jump;
}

if (move != 0) {
	state = player.walk;
}