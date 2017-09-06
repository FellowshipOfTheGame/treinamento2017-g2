/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 7C4FE417
/// @DnDArgument : "code" "/// @description Hurts player and destroys instance$(13_10)if(other.state != player.dead) {$(13_10)	other.damage_taken = damage;$(13_10)	other.state = player.hurt;$(13_10)}$(13_10)$(13_10)instance_destroy();"
/// @description Hurts player and destroys instance
if(other.state != player.dead) {
	other.damage_taken = damage;
	other.state = player.hurt;
}

instance_destroy();