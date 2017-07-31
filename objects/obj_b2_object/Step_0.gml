/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 0F9615B2
/// @DnDArgument : "code" "//@description Object bouncing physics$(13_10)$(13_10)hsp = dir * movespeed;$(13_10)$(13_10)// Horizontal collisions$(13_10)if (place_meeting(x + hsp, y, obj_wall)) {$(13_10)    while (!place_meeting(x + sign(hsp), y, obj_wall)) {$(13_10)        x += sign(hsp);$(13_10)    }$(13_10)    hsp = 0;$(13_10)}$(13_10)x += hsp;$(13_10)$(13_10)// Vertical collisions$(13_10)if(place_meeting(x, y+vsp, obj_wall)) {$(13_10)	while(!place_meeting(x, y+sign(vsp), obj_wall)) {$(13_10)		y += sign(vsp);$(13_10)	}$(13_10)	vsp = 0;$(13_10)}$(13_10)y += vsp;$(13_10)$(13_10)grounded = (place_meeting(x, y+1, obj_wall));$(13_10)$(13_10)if (!grounded) {$(13_10)    vsp += grav;$(13_10)}$(13_10)else if(grounded && bounces > 0 && !place_meeting(x+(dir*sprite_width/2), y, obj_wall)) {$(13_10)	vsp = jumpheight;$(13_10)	jumpheight /= 1.5;$(13_10)	bounces -= 1;$(13_10)}$(13_10)else if(destroy) {$(13_10)	movespeed = 0;$(13_10)	alarm[0] = 10;$(13_10)	destroy = false;$(13_10)}$(13_10)$(13_10)"
//l0F9615B2_0 Object bouncing physics

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

grounded = (place_meeting(x, y+1, obj_wall));

if (!grounded) {
    vsp += grav;
}
else if(grounded && bounces > 0 && !place_meeting(x+(dir*sprite_width/2), y, obj_wall)) {
	vsp = jumpheight;
	jumpheight /= 1.5;
	bounces -= 1;
}
else if(destroy) {
	movespeed = 0;
	alarm[0] = 10;
	destroy = false;
}