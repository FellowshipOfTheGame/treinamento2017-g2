/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 5FF0022E
/// @DnDArgument : "code" "/// @description Decreases durability or destroy$(13_10)if(durability > 0) {$(13_10)	durability -= 1;$(13_10)}$(13_10)$(13_10)if(durability == 0) {$(13_10)	instance_destroy();$(13_10)}"
/// @description Decreases durability or destroy
if(durability > 0) {
	durability -= 1;
}

if(durability == 0) {
	instance_destroy();
}