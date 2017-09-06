/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 0F37F2DA
/// @DnDArgument : "code" "/// @description Hurts enemy$(13_10)$(13_10)if(effective && other.hp > 0) {$(13_10)	other.hp -= damage;$(13_10)	other.state = enemy.hurt;$(13_10)}$(13_10)$(13_10)if(other.hp <= 0) {$(13_10)	other.state = enemy.dead;	$(13_10)}"
/// @description Hurts enemy

if(effective && other.hp > 0) {
	other.hp -= damage;
	other.state = enemy.hurt;
}

if(other.hp <= 0) {
	other.state = enemy.dead;	
}