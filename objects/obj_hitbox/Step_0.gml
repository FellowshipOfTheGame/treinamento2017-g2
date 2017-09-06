/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 648FFFE7
/// @DnDArgument : "code" "//@description Movement and damage$(13_10)$(13_10)// Moves with player$(13_10)x = obj_player.x;$(13_10)y = obj_player.y;$(13_10)$(13_10)// Allow damage$(13_10)if(image_index == 2)$(13_10)	effective = true;$(13_10)else$(13_10)	effective = false;"
//l648FFFE7_0 Movement and damage

// Moves with player
x = obj_player.x;
y = obj_player.y;

// Allow damage
if(image_index == 2)
	effective = true;
else
	effective = false;