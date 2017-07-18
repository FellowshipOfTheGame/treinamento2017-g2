/// @description Enemy patterns
switch(type) {
	case enemy.gap_detec:
		// Gap Detection
		if(!place_meeting(x+sprite_width, y+1, obj_wall)) {
			dir *= -1;
		}
	break;
	case enemy.jump:
		// Jump and chases player
		movespeed = 5;
		dir = sign(obj_player.x - x);
		
		// In floor
		if(place_meeting(x, y+1, obj_wall)) {
			if(allow_jump) {
				vsp = jumpheight;
				allow_jump = false;
			}
			else {
				movespeed = 2;
			}
		}
		
		if(distance_to_object(obj_player) > perimeter) {
			allow_jump = true;
			type = enemy.gap_detec;
		}
	break;
	case enemy.dead:
		dead = true;
		sprite_index = spr_dead_enemy;
		alarm[0] = 2*room_speed;
	break;
}

if(!dead) {
	// Horizontal Movement
	hsp = dir * movespeed;
	hsp = clamp(hsp, -hsp_max, hsp_max);

	// Change Frontal Direction
	if (sign(hsp) != 0) {
		image_xscale = sign(hsp);
	}
	
	// Vertical Movement (Gravity)
	if(!place_meeting(x, y+1, obj_wall)) {
		vsp += grav;
	}

	// Horizontal Collision
	if(place_meeting(x+hsp, y, obj_wall)) {
		dir *= -1;
	} else {
		x += hsp;
	}

	// Vertical Collision
	if(place_meeting(x, y+vsp, obj_wall)) {
		while(!place_meeting(x, y+sign(vsp), obj_wall)) {
			y += sign(vsp);
		}
		vsp = 0;
	}
	y += vsp;
}