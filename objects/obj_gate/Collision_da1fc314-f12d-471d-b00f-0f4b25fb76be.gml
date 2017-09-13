/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 4FE2FB96
/// @DnDArgument : "code" "/// @description "Hurts" the gate and destroys instance$(13_10)if(other.effective && durability > 0) {$(13_10)	durability -= other.damage;$(13_10)}$(13_10)$(13_10)if(durability <= 0) {$(13_10)	obj_boss_2.has_passed = true;$(13_10)	instance_destroy();$(13_10)}"
/// @description "Hurts" the gate and destroys instance
if(other.effective && durability > 0) {
	durability -= other.damage;
}

if(durability <= 0) {
	obj_boss_2.has_passed = true;
	instance_destroy();
}