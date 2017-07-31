/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 5D37C894
/// @DnDArgument : "code" "/// @description Create instance to bombs$(13_10)//sprite_width*0.75$(13_10)with(instance_create_depth(x-48, y, 0, obj_b2_bomb)) {$(13_10)	image_xscale = other.image_xscale;$(13_10)	movespeed = other.movespeed;$(13_10)	$(13_10)	// Throw again$(13_10)	other.throw_bomb = true;$(13_10)}"
/// @description Create instance to bombs
//sprite_width*0.75
with(instance_create_depth(x-48, y, 0, obj_b2_bomb)) {
	image_xscale = other.image_xscale;
	movespeed = other.movespeed;
	
	// Throw again
	other.throw_bomb = true;
}