hsp = 0;

if (key_down and place_meeting(x, y+1, obj_wall)) {
	sprite_index = spr_player_crouch;
} else {
	sprite_index = spr_player;
}

if (key_up and place_meeting(x, y+1, obj_wall)) {
	state = player.jump;
}

if (move != 0) {
	state = player.walk;
} else if (key_space) {
	switch(act_weapon) {
		case 0:
			state = player.melee;
		break;
		case 1:
			state = player.gun;
		break;
	}
}