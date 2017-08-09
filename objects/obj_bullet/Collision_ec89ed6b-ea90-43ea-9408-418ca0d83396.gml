/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 2B462B1D
/// @DnDArgument : "code" "/// @description Hurts enemy and destroys instance$(13_10)instance_destroy();$(13_10)$(13_10)if(!target_player) {$(13_10)	if(other.num_lives > 0) {$(13_10)		other.num_lives -= damage;$(13_10)	}$(13_10)	if(other.num_lives <= 0) {$(13_10)		other.state = enemy.dead;	$(13_10)	}$(13_10)}"
/// @description Hurts enemy and destroys instance
instance_destroy();

if(!target_player) {
	if(other.num_lives > 0) {
		other.num_lives -= damage;
	}
	if(other.num_lives <= 0) {
		other.state = enemy.dead;	
	}
}