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
		if(hurt) {
			if(floor(image_index) < 2 || floor(image_index) > 3)
				image_index = 2;
		}
		else {
			image_index = 0;
		}
		
		hsp = 0;
		
		if (movespeed != 0) {
			state = enemy.walk;
		}
	break;
	case enemy.walk:
		if(hurt) {
			if(floor(image_index) < 2 || floor(image_index) > 3)
				image_index = 2;
		}
		else {
			if(floor(image_index) >= 2)
				image_index = 0;
		}
		
		if(movespeed == 0) {
			state = enemy.idle;
		}
		else {
			// Horizontal Movement
			hsp = dir * movespeed;
			hsp = clamp(hsp, -hsp_max, hsp_max);
			
			// Gap Detection
			if(vsp == 0 && (!place_meeting(x+(dir*sprite_width), y+1, obj_wall) /*|| place_meeting(x+(-dir*sprite_width/2), y, obj_spike)*/)) {
				dir *= -1;
			}
		}
	break;
	case enemy.jump:
		if(hurt) {
			if(floor(image_index) < 2 || floor(image_index) > 3)
				image_index = 2;
		}
		else {
			if(floor(image_index) >= 2)
				image_index = 0;
		}
		
		vsp = jumpheight;

		if (movespeed == 0) {
			state = enemy.idle;
		} else {
			state = enemy.walk;
		}
	break;
	case enemy.hurt:
		if(floor(image_index) < 2 || floor(image_index) > 3)
			image_index = 2;

		if(place_meeting(x, y+1, obj_wall)) {
			dir = sign(x - obj_player.x);
			alarm[2] = 30;
			hurt = true;
			audio_play_sound(hurt2, 1 , false);
			
			state = enemy.jump;
		}
	break;
	case enemy.dead:
		if(floor(image_index) < 4)
			image_index = 4;

		hsp = 0;

		if (vsp < 0) {
			vsp = 0;
		}
	
		if(destroy) { 
			audio_play_sound(morri, 1, false);
			alarm[0] = 2*room_speed;
			destroy = false;
		}
	break;
}	