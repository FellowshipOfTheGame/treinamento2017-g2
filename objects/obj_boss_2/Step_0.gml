/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 6F758E93
/// @DnDArgument : "code" "/// @description Boss action$(13_10)$(13_10)// Increases difficulty$(13_10)range_to = distance_to_object(obj_player)/50;$(13_10)bomb_time = random_range(50, range_to*4);$(13_10)$(13_10)if(throw_bomb) {$(13_10)	alarm[0] = bomb_time;$(13_10)	throw_bomb = false;$(13_10)}"
/// @description Boss action

// Increases difficulty
range_to = distance_to_object(obj_player)/50;
bomb_time = random_range(50, range_to*4);

if(throw_bomb) {
	alarm[0] = bomb_time;
	throw_bomb = false;
}