/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 0F9615B2
/// @DnDArgument : "code" "/// @description Patterns physics$(13_10)$(13_10)hsp = dir * movespeed;$(13_10)$(13_10)// Horizontal collision$(13_10)if(place_meeting(x+hsp, y, obj_wall)) {$(13_10)	while(!place_meeting(x+sign(hsp), y, obj_wall)) {$(13_10)		x += sign(hsp);$(13_10)	}$(13_10)	hsp = 0;$(13_10)}$(13_10)x += hsp;$(13_10)		$(13_10)// Vertical collision$(13_10)if(place_meeting(x, y+vsp, obj_wall)) {$(13_10)	while(!place_meeting(x, y+sign(vsp), obj_wall)) {$(13_10)		y += sign(vsp);$(13_10)	}$(13_10)	vsp = 0;$(13_10)}$(13_10)y += vsp;$(13_10)		$(13_10)// Gravity$(13_10)if(!place_meeting(x, y+1, obj_wall)) {$(13_10)	vsp += grav;$(13_10)}"
/// @description Patterns physics

hsp = dir * movespeed;

// Horizontal collision
if(place_meeting(x+hsp, y, obj_wall)) {
	while(!place_meeting(x+sign(hsp), y, obj_wall)) {
		x += sign(hsp);
	}
	hsp = 0;
}
x += hsp;
		
// Vertical collision
if(place_meeting(x, y+vsp, obj_wall)) {
	while(!place_meeting(x, y+sign(vsp), obj_wall)) {
		y += sign(vsp);
	}
	vsp = 0;
}
y += vsp;
		
// Gravity
if(!place_meeting(x, y+1, obj_wall)) {
	vsp += grav;
}