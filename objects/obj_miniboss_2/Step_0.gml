/// @description Enemy patterns

var cam = view_camera[0]
var cx = camera_get_view_x(cam)
var cy = camera_get_view_y(cam)

if(point_in_rectangle(x, y, cx, cy, cx + camera_get_view_width(cam), cy + camera_get_view_height(cam))){
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
		if(floor(image_index) > 2)
			image_index =  0;
	
		hsp = 0;
		
		if(obj_player.x - x > 0){ // -15
			image_xscale = 1;
		}else{
			image_xscale = -1;
		}
		
		if(reload < 3){
			if (canshoot){
				with(instance_create_depth(x, y + random_range(-15,30), 0, obj_bullet)) {
					hspeed *= other.image_xscale;
					target_player = true;
					//damage = 3;
				}
				canshoot = false;
				reload ++;
				if (reload == 3){
					alarm[2] = 3*room_speed;
				}
				alarm[1] = gun_speed*room_speed;
			}
		}
		if (distance_to_object(obj_player) >= perimeter) {
			state = enemy.chase;
		}
	break;
	case enemy.chase:
		if(floor(image_index) > 2)
			image_index =  0;
	
		// Horizontal Movement
		dir = sign(obj_player.x  - x);
		hsp = dir * 2;

		// Change Frontal Direction
		if (distance_to_object(obj_player) < perimeter){
			state = enemy.idle;
		}
		if (sign(hsp) != 0) {
			image_xscale = sign(hsp);
		}
	break;
	case enemy.hurt:
		if(floor(image_index) < 3 || floor(image_index) > 4)
			image_index = 3;
			
		if(place_meeting(x, y+1, obj_wall)) {
			movespeed = 3;
			dir = sign(x - obj_player.x);
		}
		
		if(hurt) vsp = jumpheight;
		
		hurt = false;
		
		if (num_lives <=0)
			state = enemy.dead;
 	break;
	case enemy.dead:
		if(floor(image_index) < 5)
			image_index =  5;
		
		canshoot = false;
		hsp = 0;

		if (vsp < 0) {
			vsp = 0;
		}

		if(destroy) {
			audio_play_sound(ressuscita, 1, false);
			alarm[0] = 2*room_speed;
			destroy = false;
		}
	break;
}
}