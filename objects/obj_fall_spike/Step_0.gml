/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 1DAF93B4
/// @DnDArgument : "code" "/// @description Falling spike$(13_10)if (image_angle == 0 || image_angle == 180){$(13_10)	if(abs(x - obj_player.x) < 50){$(13_10)		direction = image_angle - 90;$(13_10)		speed = 10;$(13_10)		image_speed = 0.5;$(13_10)	}$(13_10)}else if (image_angle == 90 || image_angle == 270){$(13_10)	if(abs(y - obj_player.y) < 10){$(13_10)		direction = image_angle - 90;$(13_10)		speed = 10;$(13_10)		image_speed = 0.5;$(13_10)	}$(13_10)}$(13_10)if(!place_meeting(x,y, obj_wall) and not alarm[0]){$(13_10)	alarm[0] = room_speed; $(13_10)}$(13_10)if(die == 1 && place_meeting(x,y, obj_wall)){$(13_10)	instance_destroy();$(13_10)}"
/// @description Falling spike
if (image_angle == 0 || image_angle == 180){
	if(abs(x - obj_player.x) < 50){
		direction = image_angle - 90;
		speed = 10;
		image_speed = 0.5;
	}
}else if (image_angle == 90 || image_angle == 270){
	if(abs(y - obj_player.y) < 10){
		direction = image_angle - 90;
		speed = 10;
		image_speed = 0.5;
	}
}
if(!place_meeting(x,y, obj_wall) and not alarm[0]){
	alarm[0] = room_speed; 
}
if(die == 1 && place_meeting(x,y, obj_wall)){
	instance_destroy();
}