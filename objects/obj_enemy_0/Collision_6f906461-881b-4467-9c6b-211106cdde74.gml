/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 1C45CECE
/// @DnDArgument : "code" "/// @description Kill player$(13_10)if(!dead) {$(13_10)	other.sprite_index = spr_dead_player;$(13_10)	other.dead = true;$(13_10)	other.state = player.dead;$(13_10)}$(13_10)"
/// @description Kill player
if(!dead) {
	other.sprite_index = spr_dead_player;
	other.dead = true;
	other.state = player.dead;
}