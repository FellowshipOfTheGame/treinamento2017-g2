if (key_down) {
	sprite_index = spr_player_crouch;
	if (!instance_exists(obj_hitbox)) {
		with(instance_create_depth(x, y, 0, obj_hitbox)) {
			sprite_index = spr_hitbox_crouch;
			image_xscale = other.image_xscale;
		}
		/*with(instance_place(x, y, obj_next_door)) {
			room_goto_next();
			instance_destroy(obj_hitbox_crouch);
		}
		with(instance_place(x, y, obj_prev_door)) {
			room_goto_previous();
			instance_destroy(obj_hitbox_crouch);
		}*/
	}
} else {
	sprite_index = spr_player;
	if (!instance_exists(obj_hitbox)) {
		with(instance_create_depth(x, y, 0, obj_hitbox)) {
			image_xscale = other.image_xscale;
		}
		/*with(instance_place(x, y, obj_next_door)) {
			room_goto_next();
			instance_destroy(obj_hitbox);
		}
		with(instance_place(x, y, obj_prev_door)) {
			room_goto_previous();
			instance_destroy(obj_hitbox);
		}*/
	}
}

if (move == 0) {
	hsp = 0;
}

if (alarm[2] == -1) {
	alarm[2] = 10;
}
