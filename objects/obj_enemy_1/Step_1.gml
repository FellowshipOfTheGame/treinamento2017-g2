/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 746E5BA7
/// @DnDArgument : "code" "/// @description Jump and chase player$(13_10)movespeed = 0;$(13_10)if(distance_to_object(obj_player) <= perimeter) {$(13_10)	if(place_meeting(x+hsp, y, obj_wall)) {$(13_10)		allow_jump = true;$(13_10)	}$(13_10)	type = enemy.jump;$(13_10)}$(13_10)"
/// @description Jump and chase player
movespeed = 0;
if(distance_to_object(obj_player) <= perimeter) {
	if(place_meeting(x+hsp, y, obj_wall)) {
		allow_jump = true;
	}
	type = enemy.jump;
}