/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 2B462B1D
/// @DnDArgument : "code" "/// @description Hurts enemy and destroys instance$(13_10)instance_destroy();$(13_10)$(13_10)if(!target_player) {$(13_10)	if(other.hp > 0) {$(13_10)		other.hp -= damage;$(13_10)		other.state = enemy.hurt;$(13_10)	}$(13_10)	if(other.hp <= 0) {$(13_10)		other.state = enemy.dead;	$(13_10)	}$(13_10)}"
/// @description Hurts enemy and destroys instance
instance_destroy();

if(!target_player) {
	if(other.hp > 0) {
		other.hp -= damage;
		other.state = enemy.hurt;
	}
	if(other.hp <= 0) {
		other.state = enemy.dead;	
	}
}