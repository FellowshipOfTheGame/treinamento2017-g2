if (move == 0) {
	state = player.idle;
} else {
	hsp = move * movespeed;
	hsp = clamp(hsp, -hsp_max, hsp_max);
}
		
if (sign(hsp) != 0) {
	image_xscale = sign(hsp);
}

if (key_down and place_meeting(x, y+1, obj_wall)) {
	sprite_index = spr_playerCrouch;
} else {
	sprite_index = spr_player;
}
		
if (key_space) {
	if (weapon == 0) {
		state = player.melee;
	} else if (weapon == 1) {
		state = player.gun;
	}
}

if (key_up and place_meeting(x, y+1, obj_wall)) {
	state = player.jump;
}
