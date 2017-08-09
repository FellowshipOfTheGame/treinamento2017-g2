/// @description Enemy patterns

// Gravity
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


switch(state) {
	case enemy.idle:
		hsp = 0;
		
		if (movespeed != 0) {
			state = enemy.walk;
		}
	break;
	case enemy.walk:
		if(movespeed == 0) {
			state = enemy.idle;
		}
		else {
			// Horizontal Movement
			hsp = dir * movespeed;
			hsp = clamp(hsp, -hsp_max, hsp_max);
			
			// Gap Detection
			if(vsp == 0 && (!place_meeting(x+(dir*sprite_width), y+1, obj_wall) || place_meeting(x+(-dir*sprite_width/2), y, obj_spike))) {
				dir *= -1;
			}
		
			// Change Frontal Direction
			if (sign(hsp) != 0) {
				image_xscale = sign(hsp);
			}
		}
	break;
	case enemy.jump:
		vsp = jumpheight;

		if (movespeed == 0) {
			state = enemy.idle;
		} else {
			state = enemy.walk;
		}
	break;
	case enemy.dead:
		hsp = 0;

		if (vsp < 0) {
			vsp = 0;
		}

		sprite_index = spr_dead_enemy;
		
		if(destroy) { 
			alarm[0] = 2*room_speed;
			destroy = false;
		}
	break;
}	