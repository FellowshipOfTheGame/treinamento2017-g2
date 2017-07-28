/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 5D37C894
/// @DnDArgument : "code" "/// @description Create instance to bombs$(13_10)$(13_10)with(instance_create_depth(x, y, 0, obj_b2_bomb)) {$(13_10)	image_xscale = other.image_xscale;$(13_10)	$(13_10)	// Throw again$(13_10)	other.b_time = random_range(20,60);$(13_10)	other.throw_bomb = true;$(13_10)}"
/// @description Create instance to bombs

with(instance_create_depth(x, y, 0, obj_b2_bomb)) {
	image_xscale = other.image_xscale;
	
	// Throw again
	other.b_time = random_range(20,60);
	other.throw_bomb = true;
}