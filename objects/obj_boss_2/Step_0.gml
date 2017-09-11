/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 6F758E93
/// @DnDArgument : "code" "/// @description Boss action$(13_10)$(13_10)// Change image_index$(13_10)var cam = view_camera[0]$(13_10)var cx = camera_get_view_x(cam)$(13_10)var cy = camera_get_view_y(cam)$(13_10)$(13_10)if(point_in_rectangle(x, y, cx, cy, cx + camera_get_view_width(cam), cy + camera_get_view_height(cam))){$(13_10)$(13_10)if(image_index == 4 && !has_passed)$(13_10)	image_index = 0;$(13_10)$(13_10)if(has_passed)$(13_10)	image_index = 4;$(13_10)else {$(13_10)	// Increases difficulty$(13_10)	range_to = distance_to_object(obj_player)/50;$(13_10)	bomb_time = random_range(30, range_to);$(13_10)$(13_10)	if(throw_bomb) {$(13_10)		alarm[0] = bomb_time;$(13_10)		throw_bomb = false;$(13_10)	}$(13_10)}$(13_10)}"
/// @description Boss action

// Change image_index
var cam = view_camera[0]
var cx = camera_get_view_x(cam)
var cy = camera_get_view_y(cam)

if(point_in_rectangle(x, y, cx, cy, cx + camera_get_view_width(cam), cy + camera_get_view_height(cam))){

if(image_index == 4 && !has_passed)
	image_index = 0;

if(has_passed)
	image_index = 4;
else {
	// Increases difficulty
	range_to = distance_to_object(obj_player)/50;
	bomb_time = random_range(30, range_to);

	if(throw_bomb) {
		alarm[0] = bomb_time;
		throw_bomb = false;
	}
}
}