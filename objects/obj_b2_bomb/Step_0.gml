/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 5DDC4A54
/// @DnDArgument : "code" "//@description Bouncing bomb$(13_10)$(13_10)hsp = dir * movespeed;$(13_10)$(13_10)// Horizontal collisions$(13_10)if (place_meeting(x + hsp, y, obj_wall)) {$(13_10)    while (!place_meeting(x + sign(hsp), y, obj_wall)) {$(13_10)        x += sign(hsp);$(13_10)    }$(13_10)    hsp = 0;$(13_10)}$(13_10)x += hsp;$(13_10)$(13_10)// Vertical collisions$(13_10)if(place_meeting(x, y+vsp, obj_wall)) {$(13_10)	while(!place_meeting(x, y+sign(vsp), obj_wall)) {$(13_10)		y += sign(vsp);$(13_10)	}$(13_10)	vsp = 0;$(13_10)}$(13_10)y += vsp;$(13_10)$(13_10)// Gravity, bouncing physics and explosion activation$(13_10)if (!(place_meeting(x, y+1, obj_wall))) {$(13_10)    vsp += grav;$(13_10)}$(13_10)else if(jumps > 0) {$(13_10)	vsp = jumpheight;$(13_10)	jumpheight /= 1.5;$(13_10)	jumps -= 1;$(13_10)}$(13_10)else if(!exploded && jumps == 0) {$(13_10)	movespeed = 0;$(13_10)	alarm[0] = 30;$(13_10)	exploded = true;$(13_10)}"
//l5DDC4A54_0 Bouncing bomb

hsp = dir * movespeed;

// Horizontal collisions
if (place_meeting(x + hsp, y, obj_wall)) {
    while (!place_meeting(x + sign(hsp), y, obj_wall)) {
        x += sign(hsp);
    }
    hsp = 0;
}
x += hsp;

// Vertical collisions
if(place_meeting(x, y+vsp, obj_wall)) {
	while(!place_meeting(x, y+sign(vsp), obj_wall)) {
		y += sign(vsp);
	}
	vsp = 0;
}
y += vsp;

// Gravity, bouncing physics and explosion activation
if (!(place_meeting(x, y+1, obj_wall))) {
    vsp += grav;
}
else if(jumps > 0) {
	vsp = jumpheight;
	jumpheight /= 1.5;
	jumps -= 1;
}
else if(!exploded && jumps == 0) {
	movespeed = 0;
	alarm[0] = 30;
	exploded = true;
}