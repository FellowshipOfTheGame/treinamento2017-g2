if (not dead) {
	hsp = enemy_dir * movespeed;
	hsp = clamp(hsp, -hsp_max, hsp_max);

	//Horizontal Collision
	if(place_meeting(x+hsp, y, obj_wall)) {
		enemy_dir *= -1;
	} else {
		x += hsp;
	}

	if (sign(hsp) != 0) {
		image_xscale = sign(hsp);
	}

	//Gap Detection
	if(!place_meeting(x+sprite_width, y+1, obj_wall)) {
		enemy_dir *= -1;
	}
	
	if(place_meeting(x, y, obj_player)) { 
		obj_player.sprite_index = spr_playerDead;
		obj_player.dead = true;
	}
}