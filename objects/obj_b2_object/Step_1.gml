/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 19F4FD7F
/// @DnDArgument : "code" "/// @description Object physics$(13_10)// Fazer um movimento de bouncing ball se tocar o chao, se tocar parede, destruir;$(13_10)if(place_meeting(x, y+1, obj_wall)) {$(13_10)	movespeed = 0;$(13_10)}"
/// @description Object physics
// Fazer um movimento de bouncing ball se tocar o chao, se tocar parede, destruir;
if(place_meeting(x, y+1, obj_wall)) {
	movespeed = 0;
}