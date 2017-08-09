/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 0F37F2DA
/// @DnDArgument : "code" "/// @description Hurts enemy$(13_10)if(other.num_lives > 0) {$(13_10)	other.num_lives -= damage;$(13_10)}$(13_10)$(13_10)if(other.num_lives <= 0) {$(13_10)	other.state = enemy.dead;	$(13_10)}"
/// @description Hurts enemy
if(other.num_lives > 0) {
	other.num_lives -= damage;
}

if(other.num_lives <= 0) {
	other.state = enemy.dead;	
}