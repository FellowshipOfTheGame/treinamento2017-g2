/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 1DAF93B4
/// @DnDArgument : "code" "if (image_angle == 0 || image_angle == 180){$(13_10)	if(abs(x - obj_player.x) < 50){$(13_10)		direction = image_angle - 90;$(13_10)		speed = 10;$(13_10)	}$(13_10)}else if (image_angle == 90 || image_angle == 270){$(13_10)	if(abs(y - obj_player.y) < 10){$(13_10)		show_debug_message("wat");$(13_10)		direction = image_angle - 90;$(13_10)		speed = 10;$(13_10)	}$(13_10)}"
if (image_angle == 0 || image_angle == 180){
	if(abs(x - obj_player.x) < 50){
		direction = image_angle - 90;
		speed = 10;
	}
}else if (image_angle == 90 || image_angle == 270){
	if(abs(y - obj_player.y) < 10){
		show_debug_message("wat");
		direction = image_angle - 90;
		speed = 10;
	}
}