/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 7C20E891
/// @DnDArgument : "code" "//Get the player's input$(13_10)key_right = keyboard_check(ord("D"));$(13_10)key_left = -keyboard_check(ord("A"));$(13_10)key_up = keyboard_check_pressed(ord("W"));$(13_10)$(13_10)//React to inputs$(13_10)move = key_left + key_right;$(13_10)$(13_10)if (move != 0) {$(13_10)	hsp = move * movespeed;$(13_10)	hsp = clamp(hsp, -hsp_max, hsp_max);$(13_10)} else {$(13_10)	hsp = lerp(hsp, 0, .15);$(13_10)}$(13_10)$(13_10)if(!place_meeting(x, y+1, obj_wall)) {$(13_10)	vsp += g;$(13_10)} else {$(13_10)	if (key_up) {$(13_10)		vsp = jumpheight;$(13_10)	}$(13_10)}$(13_10)$(13_10)//Horizontal Collision$(13_10)if(place_meeting(x+hsp, y, obj_wall)) {$(13_10)	while(!place_meeting(x+sign(hsp), y, obj_wall)) {$(13_10)		x += sign(hsp);$(13_10)	}$(13_10)	hsp = 0;$(13_10)}$(13_10)x += hsp;$(13_10)$(13_10)//Vertical Collision$(13_10)if(place_meeting(x, y+vsp, obj_wall)) {$(13_10)	while(!place_meeting(x, y+sign(vsp), obj_wall)) {$(13_10)		y += sign(vsp);$(13_10)	}$(13_10)	vsp = 0;$(13_10)}$(13_10)y += vsp;"
//Get the player's input
key_right = keyboard_check(ord("D"));
key_left = -keyboard_check(ord("A"));
key_up = keyboard_check_pressed(ord("W"));

//React to inputs
move = key_left + key_right;

if (move != 0) {
	hsp = move * movespeed;
	hsp = clamp(hsp, -hsp_max, hsp_max);
} else {
	hsp = lerp(hsp, 0, .15);
}

if(!place_meeting(x, y+1, obj_wall)) {
	vsp += g;
} else {
	if (key_up) {
		vsp = jumpheight;
	}
}

//Horizontal Collision
if(place_meeting(x+hsp, y, obj_wall)) {
	while(!place_meeting(x+sign(hsp), y, obj_wall)) {
		x += sign(hsp);
	}
	hsp = 0;
}
x += hsp;

//Vertical Collision
if(place_meeting(x, y+vsp, obj_wall)) {
	while(!place_meeting(x, y+sign(vsp), obj_wall)) {
		y += sign(vsp);
	}
	vsp = 0;
}
y += vsp;