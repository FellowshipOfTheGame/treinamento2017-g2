/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 714AC177
/// @DnDArgument : "code" "/// @description Hurts player$(13_10)if(sprite_index == spr_b2_bomb_exp) {$(13_10)	other.damage_taken = damage;$(13_10)	other.state = player.hurt;$(13_10)}$(13_10)else if(other.state != player.dead) {$(13_10)	movespeed = 0;$(13_10)	alarm[0] = 1;$(13_10)	explode = false;$(13_10)}"
/// @description Hurts player
if(sprite_index == spr_b2_bomb_exp) {
	other.damage_taken = damage;
	other.state = player.hurt;
}
else if(other.state != player.dead) {
	movespeed = 0;
	alarm[0] = 1;
	explode = false;
}