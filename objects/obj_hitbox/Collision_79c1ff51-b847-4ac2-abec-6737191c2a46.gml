/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 5FF0022E
/// @DnDArgument : "code" "/// @description "Hurts" the gate$(13_10)if(other.durability > 0) {$(13_10)	other.durability -= damage;$(13_10)}$(13_10)$(13_10)if(other.durability <= 0) {$(13_10)	instance_destroy(other);$(13_10)}"
/// @description "Hurts" the gate
if(other.durability > 0) {
	other.durability -= damage;
}

if(other.durability <= 0) {
	instance_destroy(other);
}