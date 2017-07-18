hsp = 0;

if (key_down and place_meeting(x, y+1, obj_wall)) {
	sprite_index = spr_playerCrouch;
} else {
	sprite_index = spr_player;
}

if (move != 0) {
	state = player.walk;
} else if (key_space) {
	if (weapon == 0) {
		state = player.melee;
	} else if (weapon == 1) {
		state = player.gun;
	}
} 

if (key_up and place_meeting(x, y+1, obj_wall)) {
	state = player.jump;
}

