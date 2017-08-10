hsp = 0;

if(vulnerable) {
	if (key_down and place_meeting(x, y+1, obj_wall)) {
		sprite_index = spr_player_crouch;
	} else {
		sprite_index = spr_player;
	}
}

if (key_up and place_meeting(x, y+1, obj_wall)) {
	state = player.jump;
}

if (move != 0) {
	state = player.walk;
}

switch(act_weapon) {
	case 0:
		if(key_space) state = player.melee;
	break;
	case 1:
		if(place_meeting(x, y+1, obj_wall)) jumps = jumps_max;
		
		if(key_up) state = player.steampack;
	break;
	case 2:
		if(key_space) state = player.gun;
	break;
}