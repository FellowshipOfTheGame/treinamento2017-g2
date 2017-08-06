/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 2B462B1D
/// @DnDArgument : "code" "/// @description Kill enemy$(13_10)if(!target_player)$(13_10)	other.state = enemy.dead;"
/// @description Kill enemy
if(!target_player)
	other.state = enemy.dead;