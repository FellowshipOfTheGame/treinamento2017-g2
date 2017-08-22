/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 3E9402C3
/// @DnDArgument : "code" "if(vulnerable) {$(13_10)	if(global.player_hp > 0) {$(13_10)		global.player_hp -= damage_taken;$(13_10)	}$(13_10)	$(13_10)	if(global.player_hp  <= 0) {$(13_10)		state = player.dead;$(13_10)	}$(13_10)	else {$(13_10)		vulnerable = false;$(13_10)		sprite_index = spr_player_hurt;$(13_10)		alarm[3] = 30;$(13_10)		state = player.idle;$(13_10)	}$(13_10)}$(13_10)else {$(13_10)	if (alarm[2] == -1) {$(13_10)		alarm[2] = 1;$(13_10)	}$(13_10)}$(13_10)"
if(vulnerable) {
	if(global.player_hp > 0) {
		global.player_hp -= damage_taken;
	}
	
	if(global.player_hp  <= 0) {
		state = player.dead;
	}
	else {
		vulnerable = false;
		sprite_index = spr_player_hurt;
		alarm[3] = 30;
		state = player.idle;
	}
}
else {
	if (alarm[2] == -1) {
		alarm[2] = 1;
	}
}