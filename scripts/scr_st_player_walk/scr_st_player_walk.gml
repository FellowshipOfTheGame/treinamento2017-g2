if (move == 0) {
	state = player.idle;
} else {
	hsp = move * movespeed;
	hsp = clamp(hsp, -hsp_max, hsp_max);
}

// Change frontal direction
if (sign(hsp) != 0) {
	image_xscale = sign(hsp);
}

if (key_down and place_meeting(x, y+1, obj_wall)) {
	sprite_index = spr_player_crouch;
} else {
	sprite_index = spr_player;
}

if (key_up and place_meeting(x, y+1, obj_wall)) {
	state = player.jump;
}

switch(act_weapon) {
	case 0:
		if(key_space) state = player.melee;
	break;
	case 1:
		if(key_space) state = player.gun;
	break;
	case 2:
		if(place_meeting(x, y+1, obj_wall)) jumps = jumps_max;
		
		if(key_up) state = player.steampack;
	break;
}