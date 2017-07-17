/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 7FD019E9
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)if(place_meeting(x, y, obj_player)) { $(13_10)		obj_player.sprite_index = spr_playerDead;$(13_10)		obj_player.dead = true;$(13_10)}"
/// @description Execute Code
if(place_meeting(x, y, obj_player)) { 
		obj_player.sprite_index = spr_playerDead;
		obj_player.dead = true;
}