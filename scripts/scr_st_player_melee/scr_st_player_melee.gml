image_index = 1;

if (!instance_exists(obj_hitbox)) {
	with(instance_create_depth(x, y, 0, obj_hitbox)) {
		image_xscale = other.image_xscale;
		audio_play_sound(smash, 1, false);
	}
}

if (move == 0) {
	hsp = 0;
}

if (alarm[2] == -1) {
	alarm[2] = 10;
}
