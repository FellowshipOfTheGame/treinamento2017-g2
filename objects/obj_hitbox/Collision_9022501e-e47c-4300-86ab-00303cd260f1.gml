/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 0C86165F
/// @DnDArgument : "code" "/// @description Hurts miniboss$(13_10)if(!other.invencible){$(13_10)	other.num_lives --;$(13_10)	other.perimeter -= 50;$(13_10)	other.gun_speed -= 0.5;$(13_10)	$(13_10)	if(other.num_lives == 0){$(13_10)		other.state = enemy.dead;$(13_10)	}$(13_10)	$(13_10)	other.invencible = true;$(13_10)	other.reload = 3;$(13_10)	other.alarm[3] = 5*room_speed;$(13_10)}$(13_10)"
/// @description Hurts miniboss
if(!other.invencible){
	other.num_lives --;
	other.perimeter -= 50;
	other.gun_speed -= 0.5;
	
	if(other.num_lives == 0){
		other.state = enemy.dead;
	}
	
	other.invencible = true;
	other.reload = 3;
	other.alarm[3] = 5*room_speed;
}