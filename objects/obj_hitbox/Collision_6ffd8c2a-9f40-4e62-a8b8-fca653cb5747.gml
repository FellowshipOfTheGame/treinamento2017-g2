/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 15FBCBB9
/// @DnDArgument : "code" "/// @description Go to next room$(13_10)$(13_10)//room_goto(global.door_room);$(13_10)$(13_10)global.doors_passed++;$(13_10)camera_set_view_pos(view_camera[0], (view_wport[0]-65)*global.doors_passed, 0);$(13_10)$(13_10)switch(global.doors_passed) {$(13_10)	case 1:$(13_10)		obj_player.x = 1048$(13_10)		obj_player.y = 146;$(13_10)		break;$(13_10)	case 2:$(13_10)		obj_player.x = 2380;$(13_10)		obj_player.y = 620;$(13_10)		break;$(13_10)	case 3:$(13_10)		obj_player.x = 3000;$(13_10)		obj_player.y = 620;$(13_10)		break;$(13_10)	case 4:$(13_10)		obj_player.x = 4000;$(13_10)		obj_player.y = 620;$(13_10)		break;$(13_10)	case 5:$(13_10)		obj_player.x = 4910;$(13_10)		obj_player.y = 620;$(13_10)		break;$(13_10)}$(13_10)"
/// @description Go to next room

//room_goto(global.door_room);

global.doors_passed++;
camera_set_view_pos(view_camera[0], (view_wport[0]-65)*global.doors_passed, 0);

switch(global.doors_passed) {
	case 1:
		obj_player.x = 1048
		obj_player.y = 146;
		break;
	case 2:
		obj_player.x = 2380;
		obj_player.y = 620;
		break;
	case 3:
		obj_player.x = 3000;
		obj_player.y = 620;
		break;
	case 4:
		obj_player.x = 4000;
		obj_player.y = 620;
		break;
	case 5:
		obj_player.x = 4910;
		obj_player.y = 620;
		break;
}