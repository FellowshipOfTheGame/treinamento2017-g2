/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 02873CAF
/// @DnDArgument : "code" "/// @description "Hurts" the gate and destroys instance$(13_10)instance_destroy(other);$(13_10)$(13_10)if(durability > 0) {$(13_10)	durability -= other.damage;$(13_10)}$(13_10)$(13_10)if(durability <= 0) {$(13_10)	has_passed = true;$(13_10)	audio_stop_all();$(13_10)	audio_play_sound(parabains, 1, true);$(13_10)	instance_destroy();$(13_10)}"
/// @description "Hurts" the gate and destroys instance
instance_destroy(other);

if(durability > 0) {
	durability -= other.damage;
}

if(durability <= 0) {
	has_passed = true;
	audio_stop_all();
	audio_play_sound(parabains, 1, true);
	instance_destroy();
}