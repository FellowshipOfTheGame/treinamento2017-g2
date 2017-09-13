/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 20418E28
/// @DnDArgument : "code" "image_index = 4;$(13_10)$(13_10)if(jumps > 0) {$(13_10)	jumps -= 1;$(13_10)	vsp = jumpheight;$(13_10)}$(13_10)$(13_10)if (move == 0) {$(13_10)	state = player.idle;$(13_10)} else {$(13_10)	state = player.walk;$(13_10)}"
image_index = 4;

if(jumps > 0) {
	jumps -= 1;
	vsp = jumpheight;
}

if (move == 0) {
	state = player.idle;
} else {
	state = player.walk;
}