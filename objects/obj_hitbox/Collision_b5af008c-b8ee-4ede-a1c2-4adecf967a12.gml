/// @description Go to next level

global.doors_passed++;
camera_set_view_pos(view_camera[0], (view_wport[0]-65)*global.doors_passed, 0);

switch(global.doors_passed) {
	case 1:
		obj_player.x = 1048
		obj_player.y = 146;
		break;
	case 2: // miniboss
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
	case 5: // boss
		obj_player.x = 4910;
		obj_player.y = 620;
		break;
}