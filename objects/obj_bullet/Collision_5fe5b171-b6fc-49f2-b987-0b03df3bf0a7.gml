/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 5468FAAB
/// @DnDArgument : "code" "/// @description Hurts player and destroys instance$(13_10)instance_destroy();$(13_10)$(13_10)if(target_player)$(13_10)	other.state = player.dead"
/// @description Hurts player and destroys instance
instance_destroy();

if(target_player)
	other.state = player.dead