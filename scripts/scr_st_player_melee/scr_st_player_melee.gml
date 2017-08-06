if (key_down) {
	sprite_index = spr_player_crouch;
	sprite_hitbox = spr_hitbox_crouch;
} else {
	sprite_index = spr_player;
	sprite_hitbox = spr_hitbox;
}

if (!instance_exists(obj_hitbox)) {
	with(instance_create_depth(x, y, 0, obj_hitbox)) {
		sprite_index = other.sprite_hitbox;
		image_xscale = other.image_xscale;
	}
}

if (move == 0) {
	hsp = 0;
}

if (alarm[2] == -1) {
	alarm[2] = 10;
}
