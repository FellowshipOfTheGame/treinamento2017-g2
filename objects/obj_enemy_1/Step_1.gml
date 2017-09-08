/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 746E5BA7
/// @DnDArgument : "code" "/// @description Jump and chase player$(13_10)if (state != enemy.dead && !hurt) {$(13_10)	if(distance_to_object(obj_player) <= perimeter &&$(13_10)		!collision_line(x, y, obj_player.x, obj_player.y, obj_wall, false, false) &&$(13_10)				obj_player.state != player.dead) {$(13_10)		if(place_meeting(x, y+1, obj_wall)) {$(13_10)			movespeed = 5;$(13_10)			dir = sign(obj_player.x - x);$(13_10)			state = enemy.jump;$(13_10)		}$(13_10)	}$(13_10)}$(13_10)$(13_10)if(hurt) {$(13_10)	hsp = 0;$(13_10)	vsp = 0;$(13_10)}$(13_10)"
/// @description Jump and chase player
if (state != enemy.dead && !hurt) {
	if(distance_to_object(obj_player) <= perimeter &&
		!collision_line(x, y, obj_player.x, obj_player.y, obj_wall, false, false) &&
				obj_player.state != player.dead) {
		if(place_meeting(x, y+1, obj_wall)) {
			movespeed = 5;
			dir = sign(obj_player.x - x);
			state = enemy.jump;
		}
	}
}

if(hurt) {
	hsp = 0;
	vsp = 0;
}