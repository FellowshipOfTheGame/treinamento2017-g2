/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 144009A1
/// @DnDArgument : "code" "/// @description Bomb physics$(13_10)$(13_10)if(explode && place_meeting(x, y+1, obj_wall)) {$(13_10)	movespeed = 0;$(13_10)	alarm[0] = 30;$(13_10)	explode = false;$(13_10)}"
/// @description Bomb physics

if(explode && place_meeting(x, y+1, obj_wall)) {
	movespeed = 0;
	alarm[0] = 30;
	explode = false;
}