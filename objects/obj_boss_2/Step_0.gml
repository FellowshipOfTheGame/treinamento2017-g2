/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 6F758E93
/// @DnDArgument : "code" "/// @description Boss Actions$(13_10)$(13_10)// Increases difficulty$(13_10)range_to = distance_to_object(obj_player)/50;$(13_10)o_time = random_range(50, range_to*5);$(13_10)b_time = random_range(60, range_to*6);$(13_10)$(13_10)movespeed = random_range(10, range_to);$(13_10)jumpheight = -random_range(5, range_to);$(13_10)$(13_10)if(throw_obje) {$(13_10)	alarm[0] = o_time;$(13_10)	throw_obje = false;$(13_10)}$(13_10)$(13_10)if(throw_bomb) {$(13_10)	alarm[1] = b_time;$(13_10)	throw_bomb = false;$(13_10)}"
/// @description Boss Actions

// Increases difficulty
range_to = distance_to_object(obj_player)/50;
o_time = random_range(50, range_to*5);
b_time = random_range(60, range_to*6);

movespeed = random_range(10, range_to);
jumpheight = -random_range(5, range_to);

if(throw_obje) {
	alarm[0] = o_time;
	throw_obje = false;
}

if(throw_bomb) {
	alarm[1] = b_time;
	throw_bomb = false;
}