/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 1DAF93B4
/// @DnDArgument : "code" "/// @description Falling spike$(13_10)var cam = view_camera[0]$(13_10)var cx = camera_get_view_x(cam)$(13_10)var cy = camera_get_view_y(cam)$(13_10)$(13_10)if(point_in_rectangle(x, y, cx, cy, cx + camera_get_view_width(cam), cy + camera_get_view_height(cam))){$(13_10)	if (image_angle == 0 || image_angle == 180){$(13_10)		if(abs(x - obj_player.x) < 50){$(13_10)			direction = image_angle - 90;$(13_10)			speed = 10;$(13_10)			image_speed = 0.5;$(13_10)		}$(13_10)	}else if (image_angle == 90 || image_angle == 270){$(13_10)		if(abs(y - obj_player.y) < 10){$(13_10)			direction = image_angle - 90;$(13_10)			speed = 10;$(13_10)			image_speed = 0.5;$(13_10)		}$(13_10)	}$(13_10)	if(!place_meeting(x,y, obj_wall) and not alarm[0]){$(13_10)		alarm[0] = room_speed * 2; $(13_10)	}$(13_10)	if(die == 1 && place_meeting(x,y, obj_wall)){$(13_10)		instance_destroy();$(13_10)	}$(13_10)}"
/// @description Falling spike
var cam = view_camera[0]
var cx = camera_get_view_x(cam)
var cy = camera_get_view_y(cam)

if(point_in_rectangle(x, y, cx, cy, cx + camera_get_view_width(cam), cy + camera_get_view_height(cam))){
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
		alarm[0] = room_speed * 2; 
	}
	if(die == 1 && place_meeting(x,y, obj_wall)){
		instance_destroy();
	}
}