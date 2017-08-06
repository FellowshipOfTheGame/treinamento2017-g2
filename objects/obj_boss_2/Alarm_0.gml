/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 092AD095
/// @DnDArgument : "code" "/// @description Create instance bombs$(13_10)$(13_10)with(instance_create_depth(x-48, y, 0, obj_b2_bomb)) {$(13_10)	image_xscale = other.image_xscale;$(13_10)	$(13_10)	movespeed = random_range(10, other.range_to);$(13_10)	jumpheight = -random_range(5, other.range_to);$(13_10)	$(13_10)	// Throw again$(13_10)	other.throw_bomb = true;$(13_10)}"
/// @description Create instance bombs

with(instance_create_depth(x-48, y, 0, obj_b2_bomb)) {
	image_xscale = other.image_xscale;
	
	movespeed = random_range(10, other.range_to);
	jumpheight = -random_range(5, other.range_to);
	
	// Throw again
	other.throw_bomb = true;
}