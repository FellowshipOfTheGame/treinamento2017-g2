/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 0F37F2DA
/// @DnDArgument : "code" "/// @description Hurts enemy$(13_10)if(other.hp > 0) {$(13_10)	other.hp -= damage;$(13_10)}$(13_10)if(other.hp <= 0) {$(13_10)	other.state = enemy.dead;	$(13_10)}"
/// @description Hurts enemy
if(other.hp > 0) {
	other.hp -= damage;
}
if(other.hp <= 0) {
	other.state = enemy.dead;	
}