/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 2A5DA81F
/// @DnDArgument : "code" "/// @description Kill player$(13_10)if(state != enemy.dead) {$(13_10)	other.state = player.dead;$(13_10)	state = enemy.idle;$(13_10)}"
/// @description Kill player
if(state != enemy.dead) {
	other.state = player.dead;
	state = enemy.idle;
}