/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 201FBFF6
/// @DnDArgument : "code" "/// @description Give health to player$(13_10)$(13_10)instance_destroy();$(13_10)if (global.player_hp + 7 <= obj_player.max_hp)$(13_10)	global.player_hp += 7;$(13_10)else global.player_hp = obj_player.max_hp;"
/// @description Give health to player

instance_destroy();
if (global.player_hp + 7 <= obj_player.max_hp)
	global.player_hp += 7;
else global.player_hp = obj_player.max_hp;