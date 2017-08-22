/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 0C86165F
/// @DnDArgument : "code" "/// @description Execute Code$(13_10)if(!invencible){$(13_10)	num_lives --;$(13_10)	perimeter -= 75;$(13_10)	gun_speed -= 0.5;$(13_10)	if(num_lives == 0){$(13_10)		state = enemy.dead;$(13_10)	}$(13_10)	invencible = true;$(13_10)	reload = 3;$(13_10)	alarm[3] = 5*room_speed;$(13_10)}$(13_10)"
/// @description Execute Code
if(!invencible){
	num_lives --;
	perimeter -= 75;
	gun_speed -= 0.5;
	if(num_lives == 0){
		state = enemy.dead;
	}
	invencible = true;
	reload = 3;
	alarm[3] = 5*room_speed;
}