/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 092AD095
/// @DnDArgument : "code" "/// @description Create intance to objects$(13_10)$(13_10)with(instance_create_depth(x-48, y, 0, obj_b2_object)) {$(13_10)	image_xscale = other.image_xscale;$(13_10)	jumpheight = other.jumpheight;$(13_10)	movespeed = other.movespeed;$(13_10)	$(13_10)	// Throw again$(13_10)	other.throw_obje = true;$(13_10)}"
/// @description Create intance to objects

with(instance_create_depth(x-48, y, 0, obj_b2_object)) {
	image_xscale = other.image_xscale;
	jumpheight = other.jumpheight;
	movespeed = other.movespeed;
	
	// Throw again
	other.throw_obje = true;
}