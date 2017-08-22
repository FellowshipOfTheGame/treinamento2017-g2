/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 39BC37D1
/// @DnDArgument : "code" "/// @description "Hurts" the gate and destroys instance$(13_10)instance_destroy();$(13_10)$(13_10)if(other.durability > 0) {$(13_10)	other.durability -= damage;$(13_10)}$(13_10)if(other.durability == 0) {$(13_10)	instance_destroy(other);$(13_10)}"
/// @description "Hurts" the gate and destroys instance
instance_destroy();

if(other.durability > 0) {
	other.durability -= damage;
}
if(other.durability == 0) {
	instance_destroy(other);
}

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 02A2C41A
/// @DnDArgument : "code" "/// @description Explode$(13_10)sprite_index = spr_b2_bomb_exp;"
/// @description Explode
sprite_index = spr_b2_bomb_exp;

/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 7824D6FF
/// @DnDArgument : "code" "/// @description Destroy instance and hurt player$(13_10)instance_destroy();$(13_10)$(13_10)if(target_player)$(13_10)	other.state = player.dead"
/// @description Destroy instance and hurt player
instance_destroy();

if(target_player)
	other.state = player.dead