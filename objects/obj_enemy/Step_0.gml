hsp = enemy_dir * movespeed;
hsp = clamp(hsp, -hsp_max, hsp_max);

//Horizontal Collision
if(place_meeting(x+hsp, y, obj_wall)) {
	enemy_dir *= -1;
} else {
	x += hsp;
}

//Gap Detection
if(!place_meeting(x+sprite_width, y+1, obj_wall)) {
	enemy_dir *= -1;
}

