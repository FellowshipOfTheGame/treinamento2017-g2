/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 6F16DC52
/// @DnDArgument : "code" "/// @description Destroys instance$(13_10)if(sprite_index == spr_b2_bomb_exp) {$(13_10)	audio_play_sound(bomb, 1, false);$(13_10)	instance_destroy();	$(13_10)}"
/// @description Destroys instance
if(sprite_index == spr_b2_bomb_exp) {
	audio_play_sound(bomb, 1, false);
	instance_destroy();	
}