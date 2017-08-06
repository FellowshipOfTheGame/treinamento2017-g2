/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 39BC37D1
/// @DnDArgument : "code" "/// @description Decreases durability or destroy$(13_10)if(durability > 0) {$(13_10)	durability -= 1;$(13_10)}$(13_10)$(13_10)if(durability == 0) {$(13_10)	instance_destroy();$(13_10)}$(13_10)$(13_10)instance_destroy(other);"
/// @description Decreases durability or destroy
if(durability > 0) {
	durability -= 1;
}

if(durability == 0) {
	instance_destroy();
}

instance_destroy(other);