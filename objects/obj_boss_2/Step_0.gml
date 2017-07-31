/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 6F758E93
/// @DnDArgument : "code" "/// @description Boss Actions$(13_10)$(13_10)if(throw_obje) {$(13_10)	alarm[0] = o_time;$(13_10)	throw_obje = false;$(13_10)}$(13_10)$(13_10)if(throw_bomb) {$(13_10)	alarm[1] = b_time;$(13_10)	throw_bomb = false;$(13_10)}"
/// @description Boss Actions

if(throw_obje) {
	alarm[0] = o_time;
	throw_obje = false;
}

if(throw_bomb) {
	alarm[1] = b_time;
	throw_bomb = false;
}