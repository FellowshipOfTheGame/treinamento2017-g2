/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 7C4FE417
/// @DnDArgument : "code" "/// @description Hurts player$(13_10)if(other.state != player.dead) {$(13_10)	other.damage_taken = damage;$(13_10)	other.state = player.hurt;$(13_10)}"
/// @description Hurts player
if(other.state != player.dead) {
	other.damage_taken = damage;
	other.state = player.hurt;
}