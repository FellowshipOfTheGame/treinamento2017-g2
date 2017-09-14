/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 61F7BB61
/// @DnDArgument : "code" "/// @description Destroys instance$(13_10)$(13_10)// Allow player to use gun$(13_10)global.max_weapon = 2;$(13_10)$(13_10)instance_create_depth(x, y, 300, obj_door);$(13_10)instance_create_depth(x+20, y+20, 300, obj_health);$(13_10)$(13_10)instance_destroy();"
/// @description Destroys instance

// Allow player to use gun
global.max_weapon = 2;

instance_create_depth(x, y, 300, obj_door);
instance_create_depth(x+20, y+20, 300, obj_health);

instance_destroy();